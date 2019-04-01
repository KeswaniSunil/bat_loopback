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
        //console.log(stockId)
        if (stockId.length > 0) {
          for (let i = 0, p = Promise.resolve(); i < stockId.length; i++) {
            p = p.then(_ => new Promise(resolve1 => {
              Stocklog.find({ where: { id: stockId[i] } }, (err, sl) => {
                //console.log(sl)
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
        //console.log(stocklog)
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
            ? { and: [{ isenabled: 1 },{orderId: null}, { date: { between: [filter.startdate, filter.enddate] } }] }
            : { and: [{ isenabled: 1 }, {orderId:{neq:null}}, { date: { between: [filter.startdate, filter.enddate] } }] })) 
        : { and: [{ isenabled: 2 }, { date: { between: [filter.startdate, filter.enddate] } }] }
    let promise = new Promise((resolve, reject) => {
      Stocklog.find({ include: ['purchase', { 'order': "billbook" }, 'item'], order: orderby, where: where }, (err, stocklog) => {
        //console.log(stocklog)
        let records = []
        if(stocklog.length > 0) {
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
              new String(stocklog[i].notes).search(search) > -1 ||
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
    //let Purchaseitems = app.models.Purchaseitems
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = (field == 'billno' || field == 'name') ? null : field+' '+ascdesc
    let promise = new Promise((resolve, reject) => {
        Stocklog.find({include: [{ 'purchase': "supplier" },{ 'order': "customer"},{ 'order': "billbook"}], order:orderby, where: { and: [{ isenabled: 1 },{ date: { between: [filter.startdate, filter.enddate] } },{itemId:filter.id}] } }, (err, totalStock) => {
            let records = []
            console.log(totalStock)
            if(totalStock.length > 0) {
                for (let i = 0; i < totalStock.length; i++) {
                  let billno = (totalStock[i].purchaseId != null || totalStock[i].orderId != null) ? ((totalStock[i].purchaseId != null) ? purchase.billno + "" : (order.billbook().prefix + "" + order.billno)) : "-"
                  let namee=(totalStock[i].purchaseId != null || totalStock[i].orderId != null) ? ((totalStock[i].purchaseId != null) ? purchase.supplier().name + "" : order.customer().name ) : "-"
                  let date = new Date(totalStock[i].date).getDate() + "/" + (new Date(totalStock[i].date).getMonth() + 1) + "/" + new Date(totalStock[i].date).getFullYear()
                    if (billno.toLowerCase().search(search.toLowerCase()) > -1 ||
                        namee.toLowerCase().search(search.toLowerCase()) > -1 ||
                        new String(totalStock[i].price).search(search) > -1 ||
                        new String(totalStock[i].quantity).search(search) > -1 ||
                        new String(stocklog[i].notes).search(search) > -1 ||
                        date.search(search) > -1) {
                          records.push(totalStock[i])
                    }
                    if (i == totalStock.length - 1) {
                        resolve(records)
                    }
                }
            }
            else resolve(records)
        })
    })
    total = await promise
    console.log(total.length)
    if (limit == -1) limit = total.length
    if (field == 'name') {
      total.sort(function (a, b) {
        let name = (a.purchaseId != null || a.orderId != null) ? ((a.purchaseId != null) ? a.purchase().supplier().name + "" : a.order().customer().name) : "-"
        let name1 = (b.purchaseId != null ) ? b.purchase().supplier().name + "" : "-"
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
};
