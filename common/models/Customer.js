'use strict';
const uuidV4 = require('uuid/v4');
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
                        if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                            for (var i = 0; i < Customers.length; i++) {
                                if (Customers[i].name.toLowerCase().replace(/ /g, "").search(names.toLowerCase().replace(/ /g, "")) > -1) {
                                    values[j] = new Object()
                                    values[j].id = Customers[i].id
                                    values[j].name = Customers[i].name
                                    j++
                                }
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
                for (let i = 0; i < customer.length; i++) {
                    if (new String(customer[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                        new String(customer[i].mobile).search(search) > -1 || 
                        new String(customer[i].totalamount).search(search) > -1 ||
                        new String(customer[i].received).search(search) > -1 ||
                        new String(parseFloat(customer[i].totalamount) - parseFloat(customer[i].received)).search(search) > -1) {
                        records.push(customer[i])
                    }
                    if (i == customer.length - 1) {
                        resolve(records)
                    }
                }
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
};
