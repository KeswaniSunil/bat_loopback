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
                                        usedstock += itemId[i].quantity
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
};