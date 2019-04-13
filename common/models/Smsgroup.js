'use strict';
const uuidV4 = require('uuid/v4');
const app = require("../../server/server");
module.exports = function (Smsgroup) {
    Smsgroup.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Smsgroup.getGroups = async function (filter) {
        let customergroup = app.models.Customergroup;
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'total') ? null : field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Smsgroup.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, groups) => {
                //console.log(order)
                let records = []
                if (groups.length > 0) {
                    for (let i = 0, p = Promise.resolve(); i < groups.length; i++) {
                        p = p.then(_ => new Promise(resolve1 => {
                            let promise1 = new Promise((resolve2, reject1) => {
                                customergroup.count({ smsgroupId: groups[i].id, isenabled: 1 }, (err, count) => {
                                    groups[i].total = count;
                                    //console.log(count)
                                    resolve2();
                                });
                            });
                            promise1.then(resolve2 => {
                                if (new String(groups[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                                    new String(groups[i].total).search(search) > -1
                                ) {
                                    records.push(groups[i])
                                }
                                if (i == groups.length - 1) {
                                    resolve(records)
                                }
                                else resolve1()
                            });
                        }))
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if (field == 'total') {
            total.sort(function (a, b) {
                let total = a.total;
                let total1 = b.total;
                if (new String(total).trim().toLowerCase() < new String(total1).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return -1;
                    else return 1
                }
                if (new String(total).trim().toLowerCase() > new String(total1).trim().toLowerCase()) {
                    if (ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Smsgroup.remoteMethod('getGroups', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getGroups" },
    })
};
