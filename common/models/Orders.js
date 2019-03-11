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

    Orders.deleteOrder = async function(orderId){
        var promise = new Promise((resolve, reject)=>{
            let Items = app.models.Items
            let Customer = app.models.Customer
            for(let i=0;i<orderId.length;i++)
            {
                Orders.updateAll({id:orderId[i]},{isenabled:0},(err, order)=>{
                    Orders.find({include:['customer'],where:{id:orderId[i]}},(err, ordercustomer)=>{
                        let customersdetails = ordercustomer[0].toJSON().customer
                        let totalamount = customersdetails.totalamount
                        totalamount -= ordercustomer[0].totalamount
                        let receivedamount = customersdetails.received
                        receivedamount -= ordercustomer[0].receivedamount
                        Customer.updateAll({id:ordercustomer[0].customerId},{totalamount: totalamount,received: receivedamount},(err,orderUpdate)=>{
                            let Orderitem = app.models.Orderitem
                            Orderitem.find({include:['item'],where:{orderId:orderId[i]}},(err, orderitem)=>{
                                //console.log(orderitem)
                                for(let j=0;j<orderitem.length;j++)
                                {
                                    console.log(orderitem[j].itemId)
                                    let orderitemdetails = orderitem[j].toJSON().item
                                    let usedstock = orderitemdetails.usedstock - orderitem[j].quantity
                                    Items.updateAll({id:orderitem[j].itemId},{usedstock:usedstock},(err, res)=>{
                                        if(i == orderId.length - 1) resolve("done")
                                    })
                                }
                            })
                        })
                    })
                })
            }
        })
        console.log(promise)
        const billNo = await promise
        return billNo
    }
    Orders.remoteMethod('deleteOrder',{
        accepts: {arg: 'orderId', type: 'Array'},
        returns: {arg: 'BillNo', type: 'string'},
        "http": {"verb": "post", "path": "/deleteOrder"},
    })
};