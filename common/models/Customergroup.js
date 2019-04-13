'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function (Customergroup) {
    Customergroup.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });
    Customergroup.getMembers = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'name' || field == 'mobile') ? null : field+' '+ascdesc
        let promise = new Promise((resolve, reject) => {
            Customergroup.find({ include: ['customer'],order:orderby, where: { and: [{ isenabled: 1 },{smsgroupId:filter.id}] } }, (err, members) => {
                //console.log(order)
                let records = []
                if(members.length > 0) {
                    for (let i = 0; i < members.length; i++) {
                            let customer=members[i].customer();
                            if (new String(members[i].customer.name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                            new String(members[i].customer.mobile).toLowerCase().search(search.toLowerCase()) > -1 
                            ) {
                            records.push(members[i])
                        }
                        if (i == members.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        //console.log(total)
        if (limit == -1) limit = total.length
        if (field == 'name') {
            total.sort(function (a, b) {
              let name = a.customer().name;
              let name1 = b.customer().name;
              if (new String(name).trim().toLowerCase() < new String(name1).trim().toLowerCase()) {
                if (ascdesc == 'asc') return -1;
                else return 1
              }
              if (new String(name).trim().toLowerCase() > new String(name1).trim().toLowerCase()) {
                if (ascdesc == 'asc') return 1;
                else return -1
              }
              return 0;
            });
          }
          if (field == 'mobile') {
            total.sort(function (a, b) {
              let mobile = a.customer().mobile;
              let mobile1 = b.customer().mobile;
              if (new String(mobile).trim().toLowerCase() < new String(mobile1).trim().toLowerCase()) {
                if (ascdesc == 'asc') return -1;
                else return 1
              }
              if (new String(mobile).trim().toLowerCase() > new String(mobile1).trim().toLowerCase()) {
                if (ascdesc == 'asc') return 1;
                else return -1
              }
              return 0;
            });
          }  
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Customergroup.remoteMethod('getMembers', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getMembers" },
    })
};
