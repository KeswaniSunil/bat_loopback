'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server")
module.exports = function (Stocklog) {
  Stocklog.observe('before save', function (ctx, cb) {
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Stocklog.stockinsert = async function (stockId, userId) {
    let promise = new Promise((resolve, reject) => {
      let promise1 = new Promise((resolve2, reject2) => {
        let stocklog = []
        if (stockId.length > 0) {
          for (let i = 0, p = Promise.resolve(); i < stockId.length; i++) {
            p = p.then(_ => new Promise(resolve1 => {
              Stocklog.find({ where: { id: stockId[i] } }, (err, sl) => {
                stocklog[i] = new Object();
                stocklog[i].itemId = sl[0].itemId
                stocklog[i].orderId = sl[0].orderId
                stocklog[i].purchaseId = sl[0].purchaseId
                stocklog[i].price = sl[0].price
                stocklog[i].date = new Date()
                if (sl[0].orderId != null) stocklog[i].notes = "Sales Return"
                else if (sl[0].purchaseId != null) stocklog[i].notes = "Purchase Return"
                stocklog[i].quantity = parseInt(sl[0].quantity) - parseInt(sl[0].quantity) - parseInt(sl[0].quantity)
                stocklog[i].createdon = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                stocklog[i].modifiedon = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                stocklog[i].createdById = userId
                stocklog[i].modifiedById = userId
                if (i == (stockId.length - 1)) resolve2(stocklog)
                resolve1();
              })
            }
            ))
          }
        }
        else {
          resolve2(stocklog)
        }
      })
      promise1.then(stocklog => {
        Stocklog.create(stocklog, (err, sl) => {
          resolve("done")
        })
      })
    })
    const status = await promise
    return status
  }
  Stocklog.remoteMethod('stockinsert', {
    accepts: [
      { arg: 'stockId', type: 'any' },
      { arg: 'userId', type: 'number' }
    ],
    returns: { arg: 'status', type: 'string' },
    "http": { "verb": "post", "path": "/stockinsert" },
  })

  Stocklog.updatetotalstock = async function (itemId) {
    let Items = app.models.Items
    let promise = new Promise((resolve, reject) => {
      for (let i = 0, p = Promise.resolve(); i < itemId.length; i++) {
        p = p.then(_ => new Promise(resolve1 => {
          Items.find({ where: { id: itemId[i].itemId } }, (err, item) => {
            let totalstock = parseFloat(item[0].totalstock) + parseFloat(itemId[i].quantity)
            Items.updateAll({ id: itemId[i].itemId }, { totalstock: totalstock }, (err, itemstatus) => {
              if (i == (itemId.length - 1)) resolve("done")
              resolve1();
            })
          })
        }
        ))
      }
    })
    const status = await promise
    return status
  }
  Stocklog.remoteMethod('updatetotalstock', {
    accepts: [
      { arg: 'itemId', type: 'any' }
    ],
    returns: { arg: 'status', type: 'string' },
    "http": { "verb": "post", "path": "/updatetotalstock" },
  })

  Stocklog.getStocklogs = async function (filter) {
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = (field == 'itemname' || field == 'billno') ? null : field + ' ' + ascdesc
    let where = (filter.purchase == 'true' || filter.sale == 'true')
      ? ((filter.purchase == 'true' && filter.sale == 'true')
        ? { and: [{ isenabled: 1 }, { date: { between: [filter.startdate, filter.enddate] } }] }
        : ((filter.purchase == 'true')
          ? { and: [{ isenabled: 1 }, { orderId: null }, { date: { between: [filter.startdate, filter.enddate] } }] }
          : { and: [{ isenabled: 1 }, { orderId: { neq: null } }, { date: { between: [filter.startdate, filter.enddate] } }] }))
      : { and: [{ isenabled: 2 }, { date: { between: [filter.startdate, filter.enddate] } }] }
    let promise = new Promise((resolve, reject) => {
      Stocklog.find({ include: ['purchase', { 'order': "billbook" }, 'item'], order: orderby, where: where }, (err, stocklog) => {
        let records = []
        if (stocklog.length > 0) {
          for (let i = 0; i < stocklog.length; i++) {
            let purchase = stocklog[i].purchase()
            let order = stocklog[i].order()
            let item = stocklog[i].item()
            let itemname = item.name
            let date = new Date(stocklog[i].date).getDate() + "/" + (new Date(stocklog[i].date).getMonth() + 1) + "/" + new Date(stocklog[i].date).getFullYear()
            let billno = (stocklog[i].purchaseId != null || stocklog[i].orderId != null) ? ((stocklog[i].purchaseId != null) ? purchase.billno + "" : (order.billbook().prefix + "" + order.billno)) : "-"
            if (billno.toLowerCase().search(search.toLowerCase()) > -1 ||
              itemname.toLowerCase().search(search.toLowerCase()) > -1 ||
              new String(stocklog[i].price).search(search) > -1 ||
              new String(stocklog[i].quantity).search(search) > -1 ||
              new String(stocklog[i].notes).toLowerCase().search(search.toLowerCase()) > -1 ||
              date.search(search) > -1) {
              records.push(stocklog[i])
            }
            if (i == stocklog.length - 1) {
              resolve(records)
            }
          }
        }
        else resolve(records)
      })
    })
    total = await promise
    if (limit == -1) limit = total.length
    if (field == 'itemname') {
      total.sort(function (a, b) {
        if (new String(a.item().name).trim().toLowerCase() < new String(b.item().name).trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        if (new String(a.item().name).trim().toLowerCase() > new String(b.item().name).trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      });
    }
    else if (field == 'billno') {
      total.sort(function (a, b) {
        let billno = (a.purchaseId != null || a.orderId != null) ? ((a.purchaseId != null) ? a.purchase().billno + "" : a.order().billbook().prefix + "" + a.order().billno) : "-"
        let billno1 = (b.purchaseId != null || b.orderId != null) ? ((b.purchaseId != null) ? b.purchase().billno + "" : b.order().billbook().prefix + "" + b.order().billno) : "-"
        if (new String(billno).trim().toLowerCase() < new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        if (new String(billno).trim().toLowerCase() > new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      });
    }
    for (let i = 0; i < total.length; i++) total[i].index = i
    return [total.length, total.splice(skip, limit)]
  }
  Stocklog.remoteMethod('getStocklogs', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getStocklogs" },
  })
  Stocklog.getTotalStock = async function (filter) {
    let Customers = app.models.Customer
    let customerdtl =""
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = (field == 'billno' || field == 'name') ? null : field + ' ' + ascdesc
    let promise = new Promise((resolve, reject) => {
      Customers.find({ where:{isenabled:1}}, (err, customer) => { customerdtl = customer })
      Stocklog.find({ include: [{ 'purchase': "supplier" }, { 'order': "billbook" }], order: orderby, where: { and: [{ isenabled: 1 }, { date: { between: [filter.startdate, filter.enddate] } }, { itemId: filter.id }] } }, (err, totalStock) => {
        let records = []
        if (totalStock.length > 0) {
          for (let i = 0, p = Promise.resolve(); i < totalStock.length; i++) {
            p = p.then(_ => new Promise(resolve1 => {
              let purchase = totalStock[i].purchase()
              let order = totalStock[i].order()
              let billno = (totalStock[i].purchaseId != null || totalStock[i].orderId != null) ? ((totalStock[i].purchaseId != null) ? purchase.billno + "" : (order.billbook().prefix + "" + order.billno)) : "-"
              let date = new Date(totalStock[i].date).getDate() + "/" + (new Date(totalStock[i].date).getMonth() + 1) + "/" + new Date(totalStock[i].date).getFullYear()
              let namee = null;
              let promise2 = new Promise((resolve2, reject2) => {
                if (totalStock[i].purchaseId != null) {
                  namee = purchase.supplier().name;
                  totalStock[i].supplierName=namee
                  totalStock[i].customerName=null
                  resolve2()
                }
                else if (totalStock[i].orderId != null) {
                  Customers.find({ where: { id: order.customerId } }, (err, customer) => {
                    namee = customer[0].name
                    totalStock[i].supplierName=null
                  totalStock[i].customerName=namee
                    resolve2()
                  });
                }
                else {
                  namee = '-'
                  totalStock[i].supplierName=null
                  totalStock[i].customerName=null
                  resolve2()
                }
              });
              promise2.then((resolve2) => {
                if (billno.toLowerCase().search(search.toLowerCase()) > -1 ||
                  namee.toLowerCase().search(search.toLowerCase()) > -1 ||
                  new String(totalStock[i].price).search(search) > -1 ||
                  new String(totalStock[i].quantity).search(search) > -1 ||
                  new String(totalStock[i].notes).toLowerCase().search(search.toLowerCase()) > -1 ||
                  date.search(search) > -1) {
                  records.push(totalStock[i])
                  if (i == totalStock.length - 1) {
                    resolve(records)
                  }
                  else resolve1()
                }
                else {
                  if (i == totalStock.length - 1) {
                    resolve(records)
                  }
                  else resolve1()
                }
              });
            }
            ))
          }
        }
        else resolve(records)
      })
    })
    total = await promise
    if (limit == -1) limit = total.length
    if (field == 'name') {
      total.sort(function (a, b) {
        let name =  (function() {
          if (a.purchaseId != null) {
            return a.purchase().supplier().name;
          }
          else if (a.orderId != null) {
            let cust = customerdtl.find(function(c){
              return c.id == a.order().customerId
            })
            return cust.name
          }
          else if (a.purchaseId == null && a.orderId == null) {
            return "-"
          }
          return "";
        })();
        let name1 = (function() {
          if (b.purchaseId != null) {
            return b.purchase().supplier().name;
          }
          else if (b.orderId != null) {
            let cust = customerdtl.find(function(c){
              return c.id == b.order().customerId
            })
            return cust.name
          }
          else if (b.purchaseId == null && b.orderId == null) {
            return "-"
          }
        })();
        if (name.trim().toLowerCase() < name1.trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        else if (name.trim().toLowerCase() > name1.trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      })
    }
    else if (field == 'billno') {
      total.sort(function (a, b) {
        let billno = (a.purchaseId != null || a.orderId != null) ? ((a.purchaseId != null) ? a.purchase().billno + "" : a.order().billbook().prefix + "" + a.order().billno) : "-"
        let billno1 = (b.purchaseId != null || b.orderId != null) ? ((b.purchaseId != null) ? b.purchase().billno + "" : b.order().billbook().prefix + "" + b.order().billno) : "-"
        if (new String(billno).trim().toLowerCase() < new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        if (new String(billno).trim().toLowerCase() > new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      });
    }
    for (let i = 0; i < total.length; i++) total[i].index = i
    return [total.length, total.splice(skip, limit)]
  }
  Stocklog.remoteMethod('getTotalStock', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getTotalStock" },
  })
  Stocklog.getUsedStock = async function (filter) {
    let Billbook = app.models.Billbook
    let BillBook = ""
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = (field == 'salesbillno' || field == 'customername') ? null : field + ' ' + ascdesc
    let promise = new Promise((resolve, reject) => {
      Stocklog.find({ include: [{ 'order': "customer" }], order: orderby, where: { and: [{ isenabled: 1 }, { date: { between: [filter.startdate, filter.enddate] } }, { itemId: filter.id },{ purchaseId: null },{ orderId: {neq:null } },{quantity:{gt:0}}] } }, (err, usedStock) => {
        let records = []
        if (usedStock.length > 0) {
          Billbook.find({ where:{isenabled:1}}, (err, billbook) => {BillBook = billbook})
          for (let i = 0, p = Promise.resolve(); i < usedStock.length; i++) {
            p = p.then(_ => new Promise(resolve1 => {
              let order = usedStock[i].order()
              let billno = "";
              let date = new Date(usedStock[i].date).getDate() + "/" + (new Date(usedStock[i].date).getMonth() + 1) + "/" + new Date(usedStock[i].date).getFullYear()
              let promise2 = new Promise((resolve2, reject2) => {
                Billbook.find({ where: { id: order.billbookId } }, (err, billbook) => {
                  billno = billbook[0].prefix + "" + order.billno;
                  usedStock[i].prefix_bill=billno
                  if(usedStock[i].prefix_bill.length>0){
                    resolve2()
                  }
                });
              });
              promise2.then((resolve2)=>{
                if (new String(billno).toLowerCase().search(search.toLowerCase()) > -1 ||
                  new String(order.customer().name).toLowerCase().search(search.toLowerCase()) > -1 ||
                  new String(usedStock[i].price).search(search) > -1 ||
                  new String(usedStock[i].quantity).search(search) > -1 ||
                  new String(usedStock[i].notes).toLowerCase().search(search.toLowerCase()) > -1 ||
                  date.search(search) > -1) {
                  records.push(usedStock[i])
                  if (i == usedStock.length - 1) {
                    resolve(records)
                  }
                  else resolve1()
                }
                else {
                  if (i == usedStock.length - 1) {
                    resolve(records)
                  }
                  else resolve1()
                }
              });
            }
            ))
          }
        }
        else resolve(records)
      })
    })
    total = await promise
    if (limit == -1) limit = total.length
    if (field == 'customername') {
      total.sort(function (a, b) {
        let name = a.order().customer().name
        let name1 = b.order().customer().name
        if (new String(name).trim().toLowerCase() < new String(name1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        if (new String(name).trim().toLowerCase() > new String(name1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      });
    }
    else if (field == 'salesbillno') {
      total.sort(function (a, b) {
        let billno=(function(){
          let bb = BillBook.find(function(c){
              return c.id == a.order().billbookId
            })
            return bb.prefix+""+a.order().billno
        })();
        let billno1=(function(){
          let bb = BillBook.find(function(c){
              return c.id == b.order().billbookId
            })
            return bb.prefix+""+b.order().billno
        })();
        if (new String(billno).trim().toLowerCase() < new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return -1;
          else return 1
        }
        if (new String(billno).trim().toLowerCase() > new String(billno1).trim().toLowerCase()) {
          if (ascdesc == 'asc') return 1;
          else return -1
        }
        return 0;
      });
    }
    for (let i = 0; i < total.length; i++) total[i].index = i
    return [total.length, total.splice(skip, limit)]
  }
  Stocklog.remoteMethod('getUsedStock', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getUsedStock" },
  })
};
