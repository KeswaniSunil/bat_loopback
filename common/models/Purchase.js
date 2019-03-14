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
  Purchase.deletepurchase = async function(purchaseId,userId){
      var promise = new Promise((resolve, reject)=>{
          (async function loop() {
            let Stocklog = app.models.Stocklog
            let Supplier = app.models.Supplier
            let Purchaseitem = app.models.Purchaseitem
            let Items = app.models.Items
            for(let i=0;i<purchaseId.length;i++)
            {
                await new Promise(resolve1=>{
                  Purchase.updateAll({id:purchaseId[i]},{isenabled:0},(err, order)=>{
                    Purchase.find({include:['supplier'],where:{id:purchaseId[i]}},(err, purchasesupplier)=>{
                        //console.log(purchasesupplier)
                        let supplierdetails = purchasesupplier[0].toJSON().supplier
                        let totalamount = supplierdetails.totalamount
                        totalamount -= purchasesupplier[0].totalamount
                        let paidamount = supplierdetails.paid
                        paidamount -= purchasesupplier[0].paidamount
                        Supplier.updateAll({id:purchasesupplier[0].supplierId},{totalamount: totalamount,paid: paidamount},(err,purchaseUpdate)=>{
                          Purchaseitem.find({where:{purchaseId:purchaseId[i]}},(err, purchaseitem)=>{
                            let stocklog = []
                            for(let k=0;k<purchaseitem.length;k++)
                            {
                                stocklog[k]=new Object();
                                stocklog[k].itemId = purchaseitem[k].itemId
                                stocklog[k].purchaseId = purchaseId[i]
                                stocklog[k].price = purchaseitem[k].itemprice
                                stocklog[k].date=new Date()
                                stocklog[k].notes="Purchase Return"
                                stocklog[k].quantity = parseInt(purchaseitem[k].quantity) - parseInt(purchaseitem[k].quantity) - parseInt(purchaseitem[k].quantity)
                                stocklog[k].createdon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                                stocklog[k].modifiedon= new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                                stocklog[k].createdById=userId
                                stocklog[k].modifiedById=userId
                            }
                            Stocklog.create(stocklog,(err,sl)=>{
                               //console.log(purchaseitem)
                               (async function loop1(){
                                for(let j=0;j<purchaseitem.length;j++)
                                {
                                    await new Promise(resolve2=>{
                                        //console.log(purchaseitem[j].itemId)
                                        Items.find({where:{id:purchaseitem[j].itemId}},(err, item)=>{
                                            let totalstock = item[0].totalstock - purchaseitem[j].quantity
                                            Items.updateAll({id:purchaseitem[j].itemId},{totalstock:totalstock},(err, res)=>{
                                                resolve2()
                                            })
                                        })
                                    })
                                    .then(resolve2=>{
                                        if(j == (purchaseitem.length-1))
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
                    if(i == purchaseId.length - 1) resolve("done")
                })
            }
        })();
      })
      //console.log(promise)
      const billNo = await promise
      return billNo
  }
  Purchase.remoteMethod('deletepurchase',{
      accepts:[
        {arg: 'purchaseId', type: 'any'},
        {arg: 'userId', type: 'number'},
      ],
      returns: {arg: 'status', type: 'string'},
      "http": {"verb": "post", "path": "/deletepurchase"},
  })

  Purchase.usedstockcal = async function(itemId, itemquantity,type){
      let promise = new Promise((resolve, reject)=>{
          let Purchaseitems = app.models.Purchaseitem
          let Items = app.models.Items
          if(type == "sub")
          {
              for(let i=0, p = Promise.resolve();i<itemquantity.length;i++)
              {
                  p = p.then(_ => new Promise(resolve1 =>
                      {
                          Purchaseitems.find({where:{id:itemId[i]},include:['item']},(err, purchaseitem)=>{
                              let itemDetails = purchaseitem[0].toJSON().item
                              let totalstock = parseInt(itemDetails.totalstock)
                              totalstock -= itemquantity[i]
                              Items.updateAll({id:itemDetails.id},{totalstock:totalstock},(err,itemstatus)=>{
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
                                      let totalstock = parseInt(item[0].totalstock)
                                      totalstock += itemId[i].quantity
                                      Items.updateAll({id:itemId[i].itemId},{totalstock:totalstock},(err,itemstatus)=>{
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
                                  Purchaseitems.find({where:{id:itemId[i].id},include:['item']},(err, purchaseitem)=>{
                                      let itemDetails = purchaseitem[0].toJSON().item
                                      let totalstock = parseInt(itemDetails.totalstock)
                                      let stock = parseInt(itemId[i].quantity) - parseInt(purchaseitem[0].quantity)
                                      totalstock += stock
                                      Items.updateAll({id:itemDetails.id},{totalstock:totalstock},(err,itemstatus)=>{
                                          Purchaseitems.updateAll({id:itemId[i].id},{
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
  Purchase.remoteMethod('usedstockcal',{
      accepts: [
                  {arg: 'itemId', type: 'any'},
                  {arg: 'itemquantity', type: 'any'},
                  {arg: 'type', type:'string'}
              ],
      returns: {arg: 'status', type: 'string'},
      "http": {"verb": "post", "path": "/usedstockcal"},
  })
};
