'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server")
module.exports = function (Customer) {
    Customer.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Customer.customerNames = async function (names) {
        let r_p = new Promise((resolve, reject) => {
            Customer.find({ fields: ['id', 'name'], where: { isenabled: 1 } }, (err, Customers) => {
                let values = new Array()
                let j = 0
                if (Customers.length > 0) {
                    if (names != null) {
                        for (var i = 0; i < Customers.length; i++) {
                            if (Customers[i].name.toLowerCase().replace(/ /g, "").search(names.toLowerCase().replace(/ /g, "")) > -1) {
                                values[j] = new Object()
                                values[j].id = Customers[i].id
                                values[j].name = Customers[i].name
                                j++
                            }
                        }                        
                    }
                    resolve(values)
                }
                else {
                    resolve(values)
                }
            })
        })
        var values = await r_p
        return values
    }
    Customer.remoteMethod("customerNames", {
        accepts: {
            arg: "names",
            type: "string"
        },
        returns: {
            arg: "values",
            type: "Array"
        },
        "http": {
            "verb": "get",
            "path": "/customerNames"
        }
    })

    Customer.getCustomers = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'pending' || field == 'name') ? null : field+' '+ascdesc
        let promise = new Promise((resolve, reject) => {
            Customer.find({ order:orderby, where: { and: [{ isenabled: 1 }] } }, (err, customer) => {
                //console.log(order)
                let records = []
                if(customer.length > 0) {
                    for (let i = 0; i < customer.length; i++) {
                        if (new String(customer[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                            new String(customer[i].mobile).search(search) > -1 || 
                            new String(customer[i].totalamount).search(search) > -1 ||
                            new String(customer[i].received).search(search) > -1 ||
                            new String(customer[i].closingbal).search(search) > -1 ||
                            new String(parseFloat(customer[i].totalamount) - parseFloat(customer[i].received)).search(search) > -1) {
                            records.push(customer[i])
                        }
                        if (i == customer.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if(field == 'name') {
            total.sort(function(a,b) {
                if ( new String(a.name).trim().toLowerCase() < new String(b.name).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(a.name).trim().toLowerCase() > new String(b.name).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if (field == 'pending') {
            if(ascdesc == 'asc') total.sort((a,b)=>{return (parseFloat(a.totalamount) - parseFloat(a.received)) - parseFloat(b.totalamount) - parseFloat(b.received)})
            else total.sort((a,b)=>{return (parseFloat(b.totalamount) - parseFloat(b.received)) - parseFloat(a.totalamount) - parseFloat(a.received)})
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Customer.remoteMethod('getCustomers', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getCustomers" },
    })

    Customer.settlement = async function (customerId, amount, pending, userId) {
        let promise = new Promise(resolve=>{
            let Orders = app.models.Orders
            let customerlogs=app.models.Customerlog
            let Orderpayment = app.models.Orderpayment
            let closingamount = parseFloat(pending) >= 0 ? 0 : (parseFloat(pending) * -1)
            Customer.find({where:{id:customerId}},(err,customer)=>{
                Customer.updateAll({id:customerId},{received:parseFloat(customer[0].received) + (amount-closingamount)},(err,cust)=>{
                    let promise1 = new Promise(resolve2=>{
                        if(closingamount > 0){
                            Customer.updateAll({id:customerId},{closingbal:parseFloat(customer[0].closingbal) + closingamount},(err,cust1)=>{
                                customerlogs.create({
                                    customerId:customerId,
                                    balance:closingamount,
                                    notes:'Balance Added',
                                    date:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    isenabled:1,
                                    createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    createdById:userId
                                },(err1,cust2)=>{
                                resolve2()
                            })
                                
                            })
                        }
                        else resolve2()
                    })
                    promise1.then(resolve2=>{
                        Orders.find({where:{and:[{customerId:customerId},{pendingamount:{gt:0}},{isenabled:1}]},order:'billdate asc'},(err,order)=>{
                            if(order.length > 0) {
                                let amount1 = amount - closingamount
                                for(let i=0, p = Promise.resolve();i<order.length;i++)
                                {
                                    p = p.then(_ => new Promise(resolve1 =>{
                                            let pendingamount = amount1-parseFloat(order[i].pendingamount)
                                            if(pendingamount >= 0)
                                            {
                                                Orders.updateAll({id:order[i].id},{receivedamount:order[i].totalamount,pendingamount:0},(err,orderupdate)=>{
                                                    Orderpayment.find({where:{orderId:order[i].id},order:'series desc',limit:1},(err,orderpayment)=>{
                                                        let series=orderpayment.length > 0 ? parseInt(orderpayment[0].series) + 1 : 0;                                                        
                                                        Orderpayment.create({
                                                            orderId:order[i].id,
                                                            paymentmethod:'Cash',
                                                            recievedamount:order[i].pendingamount,
                                                            paymentdate:(new Date()).toISOString().substr(0,10),
                                                            notes:"",
                                                            series:series,
                                                            createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            createdById:userId,
                                                            modifiedById:userId
                                                        },(err,op)=>{
                                                            //if(err) console.log(err)
                                                            amount1 -= order[i].pendingamount
                                                            //console.log(amount1+" "+i+" 23 ")
                                                            if(amount1 == 0) resolve("done")
                                                            else resolve1()
                                                        })
                                                    })
                                                })
                                            }
                                            else {
                                                Orders.updateAll({id:order[i].id},{receivedamount:parseFloat(order[i].receivedamount)+amount1,pendingamount:pendingamount*-1},(err,orderupdate)=>{
                                                    Orderpayment.find({where:{orderId:order[i].id},order:'series desc',limit:1},(err,orderpayment)=>{
                                                        let series=orderpayment.length > 0 ? parseInt(orderpayment[0].series) + 1 : 0;
                                                        Orderpayment.create({
                                                            orderId:order[i].id,
                                                            paymentmethod:'Cash',
                                                            recievedamount:amount1,
                                                            paymentdate:new Date().toISOString().substr(0,10),
                                                            notes:"",
                                                            series:series,
                                                            createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            createdById:userId,
                                                            modifiedById:userId
                                                        },(err,op)=>{
                                                            //if(err) console.log(err)
                                                            amount1 -= amount1
                                                            //console.log(amount1+" "+i+" 12 ")
                                                            if(amount1 == 0) resolve("done")
                                                            else resolve1()
                                                        })
                                                    })
                                                })
                                            }
                                        }
                                    ))
                                }
                            }
                            else resolve("done")
                        })
                    })
                })
            })
        })
        let  p = await promise
        //console.log(p)
        return p
    }
    Customer.remoteMethod('settlement', {
        accepts: [
                    { arg: 'customerId', type: 'any' },
                    { arg: 'amount', type: 'any' },
                    { arg: 'pending', type: 'any' },
                    { arg: 'userId', type: 'any'}
                ],
        returns: { arg: "status", type: "string" },
        "http": { "verb": "post", "path": "/settlement" },
    })
};
