'use strict';
const app = require("../../server/server")
const uuidV4 = require('uuid/v4');
module.exports = function (Supplier) {
    Supplier.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Supplier.supplierNames = async function (names) {
        let r_p = new Promise((resolve, reject) => {
            Supplier.find({ fields: ['id', 'name'], where: { isenabled: 1 } }, (err, Suppliers) => {
                let values = new Array()
                let j = 0
                if (Suppliers.length > 0) {
                    if (names != null) {
                        //if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                            for (var i = 0; i < Suppliers.length; i++) {
                                if (Suppliers[i].name.toLowerCase().replace(/ /g, "").search(names.toLowerCase().replace(/ /g, "")) > -1) {
                                    values[j] = new Object()
                                    values[j].id = Suppliers[i].id
                                    values[j].name = Suppliers[i].name
                                    j++
                                }
                            }
                        //}
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
    Supplier.remoteMethod("supplierNames", {
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
            "path": "/supplierNames"
        }
    })

    Supplier.getSuppliers = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'pending' || field == 'name') ? null : field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Supplier.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, supplier) => {
                //console.log(order)
                let records = []
                if(supplier.length > 0) {
                    for (let i = 0; i < supplier.length; i++) {
                        if (new String(supplier[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                            new String(supplier[i].mobile).search(search) > -1 ||
                            new String(supplier[i].totalamount).search(search) > -1 ||
                            new String(supplier[i].paid).search(search) > -1 ||
                            new String(supplier[i].closingbal).search(search) > -1 ||                            
                            new String(parseFloat(supplier[i].totalamount) - parseFloat(supplier[i].paid)).search(search) > -1) {
                            records.push(supplier[i])
                        }
                        if (i == supplier.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if (field == 'name') {
            total.sort(function (a, b) {
                if (new String(a.name).trim().toLowerCase() < new String(b.name).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return -1;
                    else return 1
                }
                if (new String(a.name).trim().toLowerCase() > new String(b.name).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if (field == 'pending') {
            if (ascdesc == 'asc') total.sort((a, b) => { return (parseFloat(a.totalamount) - parseFloat(a.paid)) - parseFloat(b.totalamount) - parseFloat(b.paid) })
            else total.sort((a, b) => { return (parseFloat(b.totalamount) - parseFloat(b.paid)) - parseFloat(a.totalamount) - parseFloat(a.paid) })
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Supplier.remoteMethod('getSuppliers', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getSuppliers" },
    })

    Supplier.settlement = async function (supplierId, amount, pending, userId) {
        let promise = new Promise(resolve=>{
            let Purchases = app.models.Purchase
            let supplierlogs=app.models.Supplierlog
            let Purchasepayment = app.models.Purchasepayment
            let closingamount = parseFloat(pending) >= 0 ? 0 : (parseFloat(pending) * -1)
            Supplier.find({where:{id:supplierId}},(err,supplier)=>{
                Supplier.updateAll({id:supplierId},{paid:parseFloat(supplier[0].paid) + (amount-closingamount)},(err,cust)=>{
                    let promise1 = new Promise(resolve2=>{
                        if(closingamount > 0){
                            Supplier.updateAll({id:supplierId},{closingbal:parseFloat(supplier[0].closingbal) + closingamount},(err,cust1)=>{
                                supplierlogs.create({
                                    supplierId:supplierId,
                                    balance:closingamount,
                                    notes:'Balance Added',
                                    date:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    isenabled:1,
                                    createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                    createdById:userId
                                },(err1,supp2)=>{
                                resolve2()
                            })
                            })
                        }
                        else resolve2()
                    })
                    promise1.then(resolve2=>{
                        Purchases.find({where:{and:[{supplierId:supplierId},{pendingamount:{gt:0}},{isenabled:1}]},order:'billdate asc'},(err,purchase)=>{
                            if(purchase.length > 0) {
                                let amount1 = amount - closingamount
                                for(let i=0, p = Promise.resolve();i<purchase.length;i++)
                                {
                                    p = p.then(_ => new Promise(resolve1 =>{
                                            let pendingamount = amount1-parseFloat(purchase[i].pendingamount)
                                            if(pendingamount >= 0)
                                            {
                                                Purchases.updateAll({id:purchase[i].id},{paidamount:purchase[i].totalamount,pendingamount:0},(err,purchaseupdate)=>{
                                                    Purchasepayment.find({where:{purchaseId:purchase[i].id},order:'series desc',limit:1},(err,purchasepayment)=>{
                                                        let series=purchasepayment.length > 0 ? parseInt(purchasepayment[0].series) + 1 : 0;                                                        
                                                        Purchasepayment.create({
                                                            purchaseId:purchase[i].id,
                                                            paymentmethod:'Cash',
                                                            paidamount:purchase[i].pendingamount,
                                                            paymentdate:(new Date()).toISOString().substr(0,10),
                                                            notes:"",
                                                            series:series,
                                                            createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                                                            createdById:userId,
                                                            modifiedById:userId
                                                        },(err,op)=>{
                                                            //if(err) console.log(err)
                                                            amount1 -= purchase[i].pendingamount
                                                            //console.log(amount1+" "+i+" 23 ")
                                                            if(amount1 == 0) resolve("done")
                                                            else resolve1()
                                                        })
                                                    })
                                                })
                                            }
                                            else {
                                                Purchases.updateAll({id:purchase[i].id},{paidamount:parseFloat(purchase[i].paidamount)+amount1,pendingamount:pendingamount*-1},(err,purchaseupdate)=>{
                                                    Purchasepayment.find({where:{purchaseId:purchase[i].id},order:'series desc',limit:1},(err,purchasepayment)=>{
                                                        let series=purchasepayment.length > 0 ? parseInt(purchasepayment[0].series) + 1 : 0;
                                                        Purchasepayment.create({
                                                            purchaseId:purchase[i].id,
                                                            paymentmethod:'Cash',
                                                            paidamount:amount1,
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
    Supplier.remoteMethod('settlement', {
        accepts: [
                    { arg: 'supplierId', type: 'any' },
                    { arg: 'amount', type: 'any' },
                    { arg: 'pending', type: 'any' },
                    { arg: 'userId', type: 'any'}
                ],
        returns: { arg: "status", type: "string" },
        "http": { "verb": "post", "path": "/settlement" },
    })
    Supplier.getPayables = async function (filter) {
        let total = []
        let promise = new Promise((resolve, reject) => {
            Supplier.find({ where: { and: [{ isenabled: 1},{totalamount:{gt:0}}] },fields: {totalamount: true, paid: true,} }, (err, supplier1) => {
                //console.log(order)
                let records = [{
                    total:0,
                    paid:0
                }]
                let amt=[]
                let pay=[]
                if(supplier1.length > 0) {
                    let promise1 = new Promise((resolve1, reject1) => {
                        for (let i = 0, p = Promise.resolve(); i < supplier1.length; i++) {
                            p = p.then(_ => new Promise(resolve1 => {}))
                            amt.push(supplier1[i].totalamount)
                            pay.push(supplier1[i].paid)
                        if (i == supplier1.length - 1) {
                            resolve1()
                        }
                    }
                    });
              promise1.then((resolve1) => {
                const reducer = (accumulator, currentValue) => accumulator + currentValue;
                records[0].total= amt.reduce(reducer);
                records[0].paid= pay.reduce(reducer);
                    if(records[0].total > 0){
                        resolve(records)
                    }
              });                    
                }
                else resolve(records)
            })
        })
        total = await promise
        return total
    }
    Supplier.remoteMethod('getPayables', {
        returns: { arg: "total", type: 'array' },
        "http": { "verb": "get", "path": "/getPayables" },
    })
};
