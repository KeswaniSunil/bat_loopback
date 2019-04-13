'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server")
module.exports = function(Orders) {
    Orders.observe('before save', function(ctx, cb){
        if (ctx.instance) {
        ctx.instance.id = uuidV4();
        } else {
        ctx.data.id = uuidV4();
        }
        cb();
    });
    Orders.generateBillNo = async function(billBookId){
        var promise = new Promise((resolve, reject)=>{
            Orders.find({include:['billbook'],where:{billbookId:billBookId},order:'billno DESC',limit:1},(err, order)=>{
                if(err)
                {
                    reject(err)
                } 
                else {
                    var billNo = {
                        no:0,
                        prefix:""
                    }
                    if(order.length > 0)
                    {
                        var lastbillno = order[0].billno
                        billNo.no = parseInt(lastbillno)+1
                        var BillBook = order[0].toJSON().billbook
                        billNo.prefix = BillBook.prefix
                        resolve(billNo)
                    }
                    else {
                        
                        let BillBook = app.models.Billbook
                        BillBook.find({where:{id:billBookId}},(err,billBook)=>{
                            if(err)
                            {
                                reject(err)
                            }
                            else {
                                if(billBook.length > 0)
                                {
                                    var billNo = {
                                        no:0,
                                        prefix:""
                                    }
                                    billNo.no = parseInt(billBook[0].series)+1
                                    billNo.prefix = billBook[0].prefix
                                    resolve(billNo)
                                }
                            }
                        })
                    }
                }
            })
        })
        const billNo = await promise
        return billNo
    }
    Orders.remoteMethod('generateBillNo',{
        accepts: {arg: 'billBookId', type: 'string'},
        returns: {arg: 'BillNo', type: 'object'},
        "http": {"verb": "get", "path": "/BillNo"},
    })

    Orders.deleteorder = async function(orderId,userId){
        let promise = new Promise((resolve, reject)=>{
            (async function loop() {
                let Items = app.models.Items
                let Customer = app.models.Customer
                let Stocklog = app.models.Stocklog
                for(let i=0;i<orderId.length;i++)
                {
                    await new Promise(resolve1=>{
                        let date = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString();
                        Orders.updateAll({id:orderId[i]},{
                                isenabled:0,
                                modifiedon: date,
                                modifiedById:userId
                            },(err, order)=>{
                            Orders.find({include:['customer'],where:{id:orderId[i]}},(err, ordercustomer)=>{
                                let customersdetails = ordercustomer[0].toJSON().customer
                                let totalamount = customersdetails.totalamount
                                totalamount -= ordercustomer[0].totalamount
                                let receivedamount = customersdetails.received
                                receivedamount -= ordercustomer[0].receivedamount
                                Customer.updateAll({id:ordercustomer[0].customerId},{totalamount: totalamount,received: receivedamount},(err,orderUpdate)=>{
                                    let Orderitem = app.models.Orderitem
                                    Orderitem.find({where:{orderId:orderId[i]}},(err, orderitem)=>{
                                        let stocklog = []        //console.log(orderitem)
                                        for(let k=0;k<orderitem.length;k++)
                                        {
                                            stocklog[k]=new Object();
                                            stocklog[k].itemId = orderitem[k].itemId
                                            stocklog[k].orderId = orderId[i]
                                            stocklog[k].price = orderitem[k].itemprice
                                            stocklog[k].date=new Date()
                                            stocklog[k].notes="Sales Return"
                                            stocklog[k].quantity = parseInt(orderitem[k].quantity) - parseInt(orderitem[k].quantity) - parseInt(orderitem[k].quantity)
                                            stocklog[k].createdon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                                            stocklog[k].modifiedon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                                            stocklog[k].createdById=userId
                                            stocklog[k].modifiedById=userId
                                        }
                                        Stocklog.create(stocklog,(err,sl)=>{
                                            (async function loop1(){
                                                for(let j=0;j<orderitem.length;j++)
                                                {
                                                    await new Promise(resolve2=>{
                                                        //console.log(orderitem[j].itemId)
                                                        Items.find({where:{id:orderitem[j].itemId}},(err, item)=>{
                                                            let usedstock = item[0].usedstock - orderitem[j].quantity
                                                            Items.updateAll({id:orderitem[j].itemId},{usedstock:usedstock},(err, res)=>{
                                                                resolve2()
                                                            })
                                                        })
                                                    })
                                                    .then(resolve2=>{
                                                        if(j == (orderitem.length-1))
                                                        {
                                                            resolve1("done")
                                                        }
                                                    })
                                                }
                                            })();
                                        })
                                    })
                                })
                            })
                        })
                    })
                    .then(resolve1=>{
                        if(i == orderId.length - 1) resolve("done")
                    })
                }
            })();
        })
        const billNo = await promise
        return billNo
    }
    Orders.remoteMethod('deleteorder',{
        accepts:[
                    {arg: 'orderId', type: 'any'},
                    {arg: 'userId', type: 'number'},
                ],
        returns: {arg: 'status', type: 'string'},
        "http": {"verb": "post", "path": "/deleteorder"},
    })

    Orders.usedstockcal = async function(itemId, itemquantity,type){
        let promise = new Promise((resolve, reject)=>{
            let Orderitems = app.models.Orderitem
            let Items = app.models.Items
            if(type == "sub")
            {
                for(let i=0, p = Promise.resolve();i<itemquantity.length;i++)
                {
                    p = p.then(_ => new Promise(resolve1 =>
                        {
                            Orderitems.find({where:{id:itemId[i]},include:['item']},(err, orderitem)=>{
                                let itemDetails = orderitem[0].toJSON().item
                                let usedstock = parseInt(itemDetails.usedstock)
                                usedstock -= itemquantity[i]
                                Items.updateAll({id:itemDetails.id},{usedstock:usedstock},(err,itemstatus)=>{
                                    if(i == (itemquantity.length - 1)) resolve("done")
                                    else resolve1()
                                })
                            })
                        }
                    ))
                }
            }
            else if(type == "add")
            {
                for(let i=0, p1 = Promise.resolve();i<itemId.length;i++)
                {
                    p1 = p1.then(_ => new Promise(resolve1 =>
                        {
                            if(itemId[i].itemId != "")
                            {
                                if(itemId[i].id == null)
                                {
                                    Items.find({where:{id:itemId[i].itemId}},(err, item)=>{
                                        let usedstock = parseInt(item[0].usedstock)
                                        usedstock += parseInt(itemId[i].quantity)
                                        Items.updateAll({id:itemId[i].itemId},{usedstock:usedstock},(err,itemstatus)=>{
                                            if(i == (itemId.length - 1)) resolve("done")
                                            else resolve1()
                                        })
                                    })
                                }
                                else {
                                    if(i == (itemId.length - 1)) resolve("done")
                                    else resolve1()
                                }
                            }
                            else{
                                if(i == (itemId.length - 1)) resolve("done")
                                else resolve1()
                            }
                        }
                    ))
                }
            }
            else if(type == "update")
            {
                for(let i=0, p1 = Promise.resolve();i<itemId.length;i++)
                {
                    p1 = p1.then(_ => new Promise(resolve1 =>
                        {
                            if(itemId[i].itemId != "")
                            {
                                if(itemId[i].id != null)
                                {
                                    Orderitems.find({where:{id:itemId[i].id},include:['item']},(err, orderitem)=>{
                                        let itemDetails = orderitem[0].toJSON().item
                                        let usedstock = parseInt(itemDetails.usedstock)
                                        let stock = parseInt(itemId[i].quantity) - parseInt(orderitem[0].quantity)
                                        usedstock += stock
                                        Items.updateAll({id:itemDetails.id},{usedstock:usedstock},(err,itemstatus)=>{
                                            Orderitems.updateAll({id:itemId[i].id},{
                                                itemId : itemId[i].itemId,
                                                quantity : itemId[i].quantity,
                                                itemprice : itemId[i].mrp,
                                                taxprice : itemId[i].taxAmount
                                            },(err, res)=>{
                                                if(i == (itemId.length - 1)) resolve("done")
                                                else resolve1()
                                            })
                                        })
                                    })
                                }
                                else {
                                    if(i == (itemId.length - 1)) resolve("done")
                                    else resolve1()
                                }
                            }
                            else{
                                if(i == (itemId.length - 1)) resolve("done")
                                else resolve1()
                            }
                        }
                    ))
                }
            }
        })
        const billNo = await promise
        return billNo
    }
    Orders.remoteMethod('usedstockcal',{
        accepts: [
                    {arg: 'itemId', type: 'any'},
                    {arg: 'itemquantity', type: 'any'},
                    {arg: 'type', type:'string'}
                ],
        returns: {arg: 'status', type: 'string'},
        "http": {"verb": "post", "path": "/usedstockcal"},
    })
    Orders.getOrders = async function(filter){
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let where = (filter.customerId != null) 
            ? {and:[{billbookId:filter.billbookId},{customerId:filter.customerId},{isenabled:1},{billdate:{between:[filter.startdate,filter.enddate]}}]} 
            : {and:[{billbookId:filter.billbookId},{isenabled:1},{billdate:{between:[filter.startdate,filter.enddate]}}]}
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'name' || field == 'billno') ? null : field+' '+ascdesc
        let promise = new Promise((resolve, reject)=>{
            Orders.find({include:['customer','billbook'],order:orderby,where:where},(err, order)=>{
                //console.log(order)
                let records=[]
                if(order.length > 0) {
                    for(let i=0;i<order.length;i++)
                    {
                        let customer = order[i].customer()
                        let name = customer.name
                        let date = new Date(order[i].billdate).getDate()+"/"+(new Date(order[i].billdate).getMonth()+1)+"/"+new Date(order[i].billdate).getFullYear()
                        let billno = order[i].billbook().prefix+""+order[i].billno
                        if(billno.toLowerCase().search(search.toLowerCase()) > -1 || name.toLowerCase().search(search.toLowerCase()) > -1 || new String(order[i].totalamount).search(search) > -1 || date.search(search) > -1)
                        {
                            records.push(order[i])
                        }
                        if(i == order.length - 1)
                        {
                            resolve(records)
                        }
                    }
                }
                else {
                    resolve(records)
                }
            })
        })
        total = await promise
        if(limit == -1) limit = total.length
        if(field == 'name') {
            total.sort(function(a,b) {
                if ( new String(a.customer().name).trim().toLowerCase() < new String(b.customer().name).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(a.customer().name).trim().toLowerCase() > new String(b.customer().name).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if(field == 'billno'){
            total.sort(function(a,b) {
                if ( new String(a.billbook().prefix+""+a.billno).trim().toLowerCase() < new String(b.billbook().prefix+""+b.billno).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(a.billbook().prefix+""+a.billno).trim().toLowerCase() > new String(b.billbook().prefix+""+b.billno).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        for(let i=0;i<total.length;i++) total[i].index = i
        return [total.length,total.splice(skip, limit)]
    }
    Orders.remoteMethod('getOrders',{
        accepts: {arg: 'filter', type: 'any'},
        returns: [{arg: "total", type:"number"},{arg: "data", type: 'array'}],
        "http": {"verb": "get", "path": "/getOrders"},
    })
};