'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Transport) {
    Transport.observe('before save', function(ctx, cb){
        if (ctx.instance) {
        ctx.instance.id = uuidV4();
        } else {
        ctx.data.id = uuidV4();
        }
        cb();
    });
    Transport.transportNames = async function(names){
        let r_p=new Promise((resolve, reject)=>{
            Transport.find({fields:['id','name'],where:{isenabled:1}},(err, Transports)=>{
                let values=new Array()
                let j=0
                if(Transports.length > 0)
                {
                    if(names != null)
                    {
                        if(/^[A-Za-z0-9- ]*$/.test(names) == true)
                        {
                            for(var i=0;i<Transports.length;i++)
                            {
                                if(Transports[i].name.toLowerCase().search(names.toLowerCase()) > -1)
                                {
                                    values[j]=new Object()
                                    values[j].id=Transports[i].id
                                    values[j].name=Transports[i].name
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
          var values=await r_p
          return values
      }
      Transport.remoteMethod("transportNames",{
        accepts:{
            arg:"names",
            type:"string"
        },
        returns:{
            arg:"values",
            type:"Array"
        },
        "http":{
            "verb":"get",
            "path":"/transportNames"
        }
      })

      Transport.getTransports = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = field + ' ' + ascdesc
        let promise = new Promise((resolve, reject) => {
            Transport.find({ order: orderby, where: { and: [{ isenabled: 1 }] } }, (err, transport) => {
                //console.log(order)
                let records = []
                for (let i = 0; i < transport.length; i++) {
                    if (new String(transport[i].name).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                        new String(transport[i].vehicleno).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ) {
                        records.push(transport[i])
                    }
                    if (i == transport.length - 1) {
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
    Transport.remoteMethod('getTransports', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getTransports" },
    })
};