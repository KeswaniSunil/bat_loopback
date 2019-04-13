'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Type) {
    Type.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Type.typeNames = async function (names) {
        let r_p = new Promise((resolve, reject) => {
            Type.find({ fields: ['id', 'name'], where: { isenabled: 1 } }, (err, Types) => {
                let values = new Array()
                let j = 0
                if (Types.length > 0) {
                    if (names != null) {
                        //if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                            for (var i = 0; i < Types.length; i++) {
                                if (Types[i].name.toLowerCase().search(names.toLowerCase()) > -1) {
                                    values[j] = new Object()
                                    values[j].id = Types[i].id
                                    values[j].name = Types[i].name
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
    Type.remoteMethod("typeNames", {
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
            "path": "/typeNames"
        }
    })

    Type.getTypes = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'tax') ? null : field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Type.find({ include:['tax'], order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, type) => {
                //console.log(order)
                let records = []
                if(type.length > 0){
                    for (let i = 0; i < type.length; i++) {
                        let tax = (type[i].taxId != '') ? type[i].tax().percentage+"" : "-"
                        if (new String(type[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                            tax.trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ) {
                            records.push(type[i])
                        }
                        if (i == type.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if (field == 'tax') {
            total.sort(function (a, b) {
                let tax = (a.taxId != '') ? a.tax().percentage : "-"
                if(tax < 10) tax = "0"+tax
                let tax2 = (b.taxId != '') ? b.tax().percentage : "-"
                if(tax2 < 10) tax2 = "0"+tax2
                if (new String(tax).trim().toLowerCase() < new String(tax2).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return -1;
                    else return 1
                }
                if (new String(tax).trim().toLowerCase() > new String(tax2).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Type.remoteMethod('getTypes', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getTypes" },
    })
};
