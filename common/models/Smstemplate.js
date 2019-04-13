'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Smstemplate) {
    Smstemplate.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Smstemplate.getTemplates = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = field + ' ' + ascdesc
        
        let promise = new Promise((resolve, reject) => {
            Smstemplate.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, templates) => {
                
                let records = []
                if (templates.length > 0) {
                    for (let i = 0, p = Promise.resolve(); i < templates.length; i++) {
                        p = p.then(_ => new Promise(resolve1 => {
                            
                                if (new String(templates[i].title).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                                    new String(templates[i].content).trim().toLowerCase().search(search.trim().toLowerCase()) > -1
                                ) {
                                    records.push(templates[i])
                                }
                                if (i == templates.length - 1) {
                                    resolve(records)
                                }
                                else resolve1()
                            
                        }))
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Smstemplate.remoteMethod('getTemplates', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getTemplates" },
    })
};
