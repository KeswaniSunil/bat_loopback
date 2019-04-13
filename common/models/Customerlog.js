'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server")
module.exports = function (Customerlog) {
  Customerlog.observe('before save', function (ctx, cb) {
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Customerlog.getLogs = async function (filter) {
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let total1=[]
    let Order=app.models.Orders
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'

    let promise = new Promise((resolve, reject) => {
        let promise3 = new Promise((resolve3, reject3) => {
            Order.find({ include:['billbook'], where: { and: [{ isenabled: 1 },{ billdate: { between: [filter.startdate, filter.enddate] } },{customerId:filter.id},{receivedamount:{gt:0}}] } }, (err, customer1) => {
                
                let records1 = []
                total1=[]
                if(customer1.length > 0) {
                    for (let i = 0; i < customer1.length; i++) {
                        let billbook=customer1[i].billbook();
                        records1.push(
                            {
                                id:customer1[i].id,
                                balance:customer1[i].receivedamount,
                                notes:'Amount Recieved on Sales against Bill:-'+billbook.prefix+""+customer1[i].billno,
                                date:customer1[i].billdate
                            }
                        )
                        if(records1.length == i+1){
                            let date = new Date(records1[i].date).getDate() + "/" + (new Date(records1[i].date).getMonth() + 1) + "/" + new Date(records1[i].date).getFullYear()
                            if (new String(records1[i].notes).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                                new String(records1[i].balance).search(search) > -1 ||
                                date.search(search) > -1){
                                total1.push(records1[i])
                            }
                            if (i == customer1.length - 1) {
                                resolve3()
                            }
                        }
                    }
                }
                else resolve3()
            })
        });
        promise3.then(resolve3=>{
            Customerlog.find({where: { and: [{ isenabled: 1 },{ date: { between: [filter.startdate, filter.enddate] } },{customerId:filter.id}] } }, (err, customer) => {
                //console.log(order)
                let records = []
                if(customer.length > 0) {
                    for (let i = 0; i < customer.length; i++) {
                            
                        let date = new Date(customer[i].date).getDate() + "/" + (new Date(customer[i].date).getMonth() + 1) + "/" + new Date(customer[i].date).getFullYear()
                        if (new String(customer[i].notes).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                            new String(customer[i].balance).search(search) > -1 ||
                            date.search(search) > -1){
                            records.push(customer[i])
                        }
                        if (i == customer.length - 1) {
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
Customerlog.remoteMethod('getLogs', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getLogs" },
})
};
