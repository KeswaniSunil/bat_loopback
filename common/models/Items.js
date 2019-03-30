'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Items) {
    Items.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Items.itemNames = async function (names) {
        let r_p = new Promise((resolve, reject) => {
            Items.find({ fields: ['id', 'name'], where: { isenabled: 1 } }, (err, Item) => {
                let values = new Array()
                let j = 0
                if (Item.length > 0) {
                    if (names != null) {
                        if (/^[A-Za-z0-9- ]*$/.test(names) == true) {
                            for (var i = 0; i < Item.length; i++) {
                                //console.log(Item[i])
                                if (Item[i].name.toLowerCase().replace(/ /g, "").search(names.toLowerCase().replace(/ /g, "")) > -1) {
                                    values[j] = new Object()
                                    values[j].id = Item[i].id
                                    values[j].name = Item[i].name
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
    Items.remoteMethod("itemNames", {
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
            "path": "/itemNames"
        }
    })

    Items.getItems = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'unit' || field == 'pending') ? null : field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Items.find({ include:['unit'], order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, item) => {
                //console.log(order)
                let records = []
                for (let i = 0; i < item.length; i++) {
                    let unit = item[i].unit().title
                    if (new String(item[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                        unit.trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                        new String(item[i].price).search(search.trim()) > -1 ||
                        new String(item[i].totalstock).search(search.trim()) > -1 ||
                        new String(item[i].usedstock).search(search.trim()) > -1 ||
                        new String(parseFloat(item[i].totalstock) - parseFloat(item[i].usedstock)).search(search.trim()) > -1) {
                        records.push(item[i])
                    }
                    if (i == item.length - 1) {
                        resolve(records)
                    }
                }
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if (field == 'unit') {
            total.sort(function (a, b) {
                if (new String(a.unit().title).trim().toLowerCase() < new String(b.unit().title).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return -1;
                    else return 1
                }
                if (new String(a.unit().title).trim().toLowerCase() > new String(b.unit().title).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if (field == 'pending') {
            if (ascdesc == 'asc') total.sort((a, b) => { return (parseFloat(a.totalstock) - parseFloat(a.usedstock)) - parseFloat(b.totalstock) - parseFloat(b.usedstock) })
            else total.sort((a, b) => { return (parseFloat(b.totalstock) - parseFloat(b.usedstock)) - parseFloat(a.totalstock) - parseFloat(a.usedstock) })
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Items.remoteMethod('getItems', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getItems" },
    })
};