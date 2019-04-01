'use strict';
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
                        if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                            for (var i = 0; i < Suppliers.length; i++) {
                                if (Suppliers[i].name.toLowerCase().replace(/ /g, "").search(names.toLowerCase().replace(/ /g, "")) > -1) {
                                    values[j] = new Object()
                                    values[j].id = Suppliers[i].id
                                    values[j].name = Suppliers[i].name
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
};
