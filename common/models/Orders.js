'use strict';
const uuidV4 = require('uuid/v4');
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
                    } else {
                        series += 1 
                        billNo.no = series 
                    }
                    let BillBook = order[0].toJSON().billbook
                    billNo.prefix = BillBook.prefix
                    resolve(billNo)
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
};