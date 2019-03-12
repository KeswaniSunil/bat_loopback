'use strict';
const app = require("../../server/server")
const uuidV4 = require('uuid/v4');
module.exports = function(Purchase) {
  Purchase.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Purchase.deletepurchase = async function(purchaseId){
      var promise = new Promise((resolve, reject)=>{
          let Stocklog = app.models.Stocklog
          let Supplier = app.models.Supplier
          for(let i=0;i<purchaseId.length;i++)
          {
              Purchase.updateAll({id:purchaseId[i]},{isenabled:0},(err, order)=>{
                  Purchase.find({include:['supplier'],where:{id:purchaseId[i]}},(err, purchasesupplier)=>{
                      //console.log(purchasesupplier)
                      let supplierdetails = purchasesupplier[0].toJSON().supplier
                      let totalamount = supplierdetails.totalamount
                      totalamount -= purchasesupplier[0].totalamount
                      let paidamount = supplierdetails.paid
                      paidamount -= purchasesupplier[0].paidamount
                      Supplier.updateAll({id:purchasesupplier[0].supplierId},{totalamount: totalamount,paid: paidamount},(err,purchaseUpdate)=>{
                        Stocklog.updateAll({purchaseId:purchaseId[i]},{isenabled:0},(err, res)=>{
                          if(i == purchaseId.length - 1) resolve("done")
                        })
                      })
                  })
              })
          }
      })
      //console.log(promise)
      const billNo = await promise
      return billNo
  }
  Purchase.remoteMethod('deletepurchase',{
      accepts: {arg: 'purchaseId', type: 'Array'},
      returns: {arg: 'status', type: 'string'},
      "http": {"verb": "post", "path": "/deletepurchase"},
  })
};
