'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Subtypes) {
    Subtypes.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Subtypes.subTypeNames = async function (names, typeId) {
        let r_p = new Promise((resolve, reject) => {
            if (typeId != null) {
                Subtypes.find({ fields: ['id', 'name'], where: { isenabled: 1, typeId: typeId } }, (err, Subtypes) => {
                    let values = new Array()
                    let j = 0
                    if (Subtypes.length > 0) {
                        if (names != null) {
                            if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                                for (var i = 0; i < Subtypes.length; i++) {
                                    if (Subtypes[i].name.toLowerCase().search(names.toLowerCase()) > -1) {
                                        values[j] = new Object()
                                        values[j].id = Subtypes[i].id
                                        values[j].name = Subtypes[i].name
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
            }
            else resolve([{ id: 0, name: "Please Select Type First" }])
        })

        var values = await r_p
        return values
    }
    Subtypes.remoteMethod("subTypeNames", {
        accepts: [{
            arg: "names",
            type: "string"
        },
        {
            arg: "typeId",
            type: "string"
        }],
        returns: {
            arg: "values",
            type: "Array"
        },
        "http": {
            "verb": "get",
            "path": "/subTypeNames"
        }
    })

    Subtypes.getSubtypes = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'type') ? null : field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Subtypes.find({ include:['type'], order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, subtype) => {
                //console.log(order)
                let records = []
                for (let i = 0; i < subtype.length; i++) {
                    let type = subtype[i].type().name
                    if (new String(subtype[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                        type.trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ) {
                        records.push(subtype[i])
                    }
                    if (i == subtype.length - 1) {
                        resolve(records)
                    }
                }
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if (field == 'type') {
            total.sort(function (a, b) {
                if (new String(a.type().name).trim().toLowerCase() < new String(b.type().name).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return -1;
                    else return 1
                }
                if (new String(a.type().name).trim().toLowerCase() > new String(b.type().name).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Subtypes.remoteMethod('getSubtypes', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getSubtypes" },
    })
};
