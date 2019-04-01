'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Billbook) {
  Billbook.observe('before save', function (ctx, cb) {
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });

  Billbook.getBillbooks = async function (filter) {
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = field + ' ' + ascdesc
    let promise = new Promise((resolve, reject) => {
      Billbook.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, billbook) => {
        //console.log(order)
        let records = []
        if (billbook.length > 0) {
          for (let i = 0; i < billbook.length; i++) {
            if (new String(billbook[i].title).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                new String(billbook[i].prefix).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                new String(billbook[i].series).trim().search(search.trim()) > -1) {
              records.push(billbook[i])
            }
            if (i == billbook.length - 1) {
              resolve(records)
            }
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
  Billbook.remoteMethod('getBillbooks', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getBillbooks" },
  })
};
