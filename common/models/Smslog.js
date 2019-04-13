'use strict';
const uuidV4 = require('uuid/v4');
let app = require("../../server/server")
let request = require('request')
module.exports = function (Smslog) {
    Smslog.observe('before save', function (ctx, cb) {
        if (ctx.instance) {
            ctx.instance.id = uuidV4();
        } else {
            ctx.data.id = uuidV4();
        }
        cb();
    });

    Smslog.getSmslogs = async function (filter) {
        let limit = (filter.limit != null) ? filter.limit : null
        let skip = (filter.skip != null) ? filter.skip : 0
        let search = (filter.search != null) ? filter.search : ""
        let total = []
        let field = filter.sort
        let ascdesc = (filter.descending == 'true') ? 'desc' : 'asc'
        let orderby = (field == 'tname' || field == 'group' || field == 'customer' ) ? null : field+' '+ascdesc
        let promise = new Promise((resolve, reject) => {
            Smslog.find({include:['smstemplate','smsgroup','customer'],order:orderby,where:{and:[{datetime:{between:[filter.startdate,filter.enddate]}}]}}, (err, smslog) => {
                //console.log(order)
                let records = []
                if(smslog.length > 0) {
                    for (let i = 0; i < smslog.length; i++) {
                        let smstemplate = smslog[i].smstemplate()
                        let smsgroupname = smslog[i].smsgroupId != null ?  smslog[i].smsgroup().name : "-"
                        let customername = smslog[i].customerId != null ? smslog[i].customer().name : "-"
                        let datetime = new Date(smslog[i].datetime).toISOString().substr(0,19).replace("T"," ")
                        if (new String(smstemplate.title).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                            new String(smslog[i].content).trim().toLowerCase().search(search.trim().toLowerCase()) > -1 || 
                            smsgroupname.trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                            customername.trim().toLowerCase().search(search.trim().toLowerCase()) > -1 ||
                            datetime.search(search.trim().toLowerCase()) > -1 ) {
                            records.push(smslog[i])
                        }
                        if (i == smslog.length - 1) {
                            resolve(records)
                        }
                    }
                }
                else resolve(records)
            })
        })
        total = await promise
        if (limit == -1) limit = total.length
        if(field == 'tname') {
            total.sort(function(a,b) {
                if ( new String(a.smstemplate().title).trim().toLowerCase() < new String(b.smstemplate().title).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(a.smstemplate().title).trim().toLowerCase() > new String(b.smstemplate().title).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if(field == 'group') {
            total.sort(function(a,b) {
                let groupa = a.smsgroupId != null ? a.smsgroup().name : "-"
                let groupb = b.smsgroupId != null ? b.smsgroup().name : "-"
                if ( new String(groupa).trim().toLowerCase() < new String(groupb).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(groupa).trim().toLowerCase() > new String(groupb).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        else if(field == 'customer') {
            total.sort(function(a,b) {
                let customera = a.customerId != null ? a.customer().name : "-"
                let customerb = b.customerId != null ? b.customer().name : "-"
                if ( new String(customera).trim().toLowerCase() < new String(customerb).trim().toLowerCase() ) {
                    if(ascdesc == 'asc') return -1;
                    else return 1
                }
                if ( new String(customera).trim().toLowerCase() > new String(customerb).trim().toLowerCase() ){
                    if(ascdesc == 'asc') return 1;
                    else return -1
                }
                return 0;
            });
        }
        for (let i = 0; i < total.length; i++) total[i].index = i
        return [total.length, total.splice(skip, limit)]
    }
    Smslog.remoteMethod('getSmslogs', {
        accepts: { arg: 'filter', type: 'any' },
        returns: [{ arg: "total", type: "number" }, { arg: "data", type: 'array' }],
        "http": { "verb": "get", "path": "/getSmslogs" },
    })
    Smslog.sendsms = async function (data) {
        let Customer = app.models.Customer
        let promise = new Promise((resolve, reject) => {
            let notsend = []
            for(let i=0,p = Promise.resolve();i<data.length;i++)
            {
                p = p.then(_ => new Promise(resolve1 =>{
                    Customer.find({where:{id:data[i].customerId}},(err,customer)=>{
                        request("http://api.msg91.com/api/sendhttp.php?country=91&sender=ROYALC&route=1&mobiles="+customer[0].mobile+"&authkey=231732A7hQ0YMDpfZ5b72be23&message="+encodeURIComponent(data[i].content),function(err3,response1,body1){
                            if(!err3 && response1.statusCode == 200){
                                if(i == data.length - 1) resolve(notsend)
                                else resolve1()
                            }
                            else {
                                notsend.push(i)
                                if(i == data.length - 1) resolve(notsend)
                                else resolve1()
                            }
                        });
                    })
                }))
            }
        })
        let d = await promise
        return d
    }
    Smslog.remoteMethod('sendsms', {
        accepts: { arg: 'data', type: 'any' },
        returns: { arg: "notsend", type: "any" },
        "http": { "verb": "post", "path": "/sendsms" },
    })
};
