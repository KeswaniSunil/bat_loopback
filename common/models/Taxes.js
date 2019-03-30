'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Taxes) {
  Taxes.observe('before save', function (ctx, cb) {
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Taxes.getTaxes = async function (filter) {
    let limit = (filter.limit != null) ? filter.limit : null
    let skip = (filter.skip != null) ? filter.skip : 0
    let search = (filter.search != null) ? filter.search : ""
    let total = []
    let field = filter.sort
    let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
    let orderby = field + ' ' + ascdesc
    let promise = new Promise((resolve, reject) => {
      Taxes.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, tax) => {
        //console.log(order)
        let records = []
        for (let i = 0; i < tax.length; i++) {
          if (new String(tax[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
            new String(tax[i].percentage).trim().toLowerCase().search(search.trim().toLowerCase()) > -1) {
            records.push(tax[i])
          }
          if (i == tax.length - 1) {
            resolve(records)
          }
        }
      })
    })
    total = await promise
    if (limit == -1) limit = total.length
    for (let i = 0; i < total.length; i++) total[i].index = i
    return [total.length, total.splice(skip, limit)]
  }
  Taxes.remoteMethod('getTaxes', {
    accepts: { arg: 'filter', type: 'any' },
    returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
    "http": { "verb": "get", "path": "/getTaxes" },
  })
};
