'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Stocklog) {
  Stocklog.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Stocklog.stockinsert = async function(stockId,userId){
    let promise = new Promise((resolve, reject)=>{
      let promise1 = new Promise((resolve2, reject2)=>{
        let stocklog=[]
        //console.log(stockId)
        for(let i=0, p = Promise.resolve();i<stockId.length;i++)
        {
          p = p.then(_ => new Promise(resolve1 =>
            {
              Stocklog.find({where:{id:stockId[i]}},(err,sl)=>{
                //console.log(sl)
                stocklog[i]=new Object();
                stocklog[i].itemId = sl[0].itemId
                stocklog[i].orderId = sl[0].orderId
                stocklog[i].purchaseId = sl[0].purchaseId
                stocklog[i].price = sl[0].price
                stocklog[i].date=new Date()
                if(sl[0].orderId != null) stocklog[i].notes="Sales Return"
                else if(sl[0].purchaseId != null) stocklog[i].notes="Purchase Return"
                stocklog[i].quantity = parseInt(sl[0].quantity) - parseInt(sl[0].quantity) - parseInt(sl[0].quantity)
                stocklog[i].createdon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                stocklog[i].modifiedon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                stocklog[i].createdById=userId
                stocklog[i].modifiedById=userId
                if(i == (stockId.length - 1)) resolve2(stocklog)
                resolve1();
              })
            }
          ))
        }
      })
      promise1.then(stocklog=>{
        //console.log(stocklog)
        Stocklog.create(stocklog,(err,sl)=>{
          resolve("done")
        })
      })
    })
    const status = await promise
    return status
  }
  Stocklog.remoteMethod('stockinsert',{
    accepts: [
                {arg: 'stockId', type: 'any'},
                {arg: 'userId', type: 'number'}
            ],
    returns: {arg: 'status', type: 'string'},
    "http": {"verb": "post", "path": "/stockinsert"},
  })
};
