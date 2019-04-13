'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server")
module.exports = function (Supplierlog) {
  Supplierlog.observe('before save', function (ctx, cb) {
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Supplierlog.getLogs = async function (filter) {
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total=[]
    let total1=[]
    let Purchase=app.models.Purchase
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let promise = new Promise((resolve, reject) => {
        let promise3 = new Promise((resolve3, reject3) => {
            Purchase.find({ where: { and: [{ isenabled: 1 },{ billdate: { between: [filter.startdate, filter.enddate] } },{supplierId:filter.id},{paidamount :{gt:0}}] } }, (err, supplier1) => {
                console.log(supplier1)
                let records1 = []
                total1=[]
                if(supplier1.length > 0) {
                    for (let i = 0; i < supplier1.length; i++) {
                        records1.push(
                            {
                                id:supplier1[i].id,
                                balance:supplier1[i].paidamount,
                                notes:'Amount Paid for Purchase against Bill:-'+supplier1[i].billno,
                                date:supplier1[i].billdate
                            }
                        )
                        if(records1.length == i+1){
                            let date = new Date(records1[i].date).getDate() + "/" + (new Date(records1[i].date).getMonth() + 1) + "/" + new Date(records1[i].date).getFullYear()
                            if (new String(records1[i].notes).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                                new String(records1[i].balance).search(search) > -1 ||
                                date.search(search) > -1){
                                total1.push(records1[i])
                            }
                            if (i == supplier1.length - 1) {
                                resolve3()
                            }
                        }
                    }
                }
                else resolve3()
            })
        });
        promise3.then(resolve3=>{
            Supplierlog.find({where: { and: [{ isenabled: 1 },{supplierId:filter.id},{ date: { between: [filter.startdate, filter.enddate] } }] } }, (err, supplier) => {
                //console.log(order)
                let records = []
                if(supplier.length > 0) {
                    for (let i = 0; i < supplier.length; i++) {
                let date = new Date(supplier[i].date).getDate() + "/" + (new Date(supplier[i].date).getMonth() + 1) + "/" + new Date(supplier[i].date).getFullYear()
    
                        if (new String(supplier[i].notes).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                            new String(supplier[i].balance).search(search) > -1 ||
                            date.search(search) > -1){
                            records.push(supplier[i])
                        }
                        if (i == supplier.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        });
    })
    total = await promise
    total=total.concat(total1)
    if (limit == -1) limit = total.length
    if(field == 'notes') {
        total.sort(function(a,b) {
            if ( new String(a.notes).trim().toLowerCase() < new String(b.notes).trim().toLowerCase() ) {
                if(ascdesc == 'asc') return -1;
                else return 1
            }
            if ( new String(a.notes).trim().toLowerCase() > new String(b.notes).trim().toLowerCase() ){
                if(ascdesc == 'asc') return 1;
                else return -1
            }
            return 0;
        });
    }
    else if(field == 'date') {
        total.sort(function(a,b) {
            if ( new String(a.date).trim().toLowerCase() < new String(b.date).trim().toLowerCase() ) {
                if(ascdesc == 'asc') return -1;
                else return 1
            }
            if ( new String(a.date).trim().toLowerCase() > new String(b.date).trim().toLowerCase() ){
                if(ascdesc == 'asc') return 1;
                else return -1
            }
            return 0;
        });
    }
    else if(field == 'balance') {
        total.sort(function(a,b) {
            if ( new String(a.balance).trim().toLowerCase() < new String(b.balance).trim().toLowerCase() ) {
                if(ascdesc == 'asc') return -1;
                else return 1
            }
            if ( new String(a.balance).trim().toLowerCase() > new String(b.balance).trim().toLowerCase() ){
                if(ascdesc == 'asc') return 1;
                else return -1
            }
            return 0;
        });
    }
    for (let i = 0; i < total.length; i++) total[i].index = i
    return [total.length, total.splice(skip, limit)]
}
Supplierlog.remoteMethod('getLogs', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getLogs" },
})
};
