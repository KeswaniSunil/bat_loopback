'use strict';
const uuidV4 = require('uuid/v4');
let app = require("../../server/server")
module.exports = function(Companydetails) {
  Companydetails.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Companydetails.updatedetails = async function(webname,name,mobile,address,state,city,pincode,statecode,logo){
    let promise = new Promise(resolve=>{
      let Config = app.models.Config
      Config.find({where:{name:webname}},(err,config)=>{
        if(err) resolve(false)
        else {
            if(config.length > 0) {
              let data = {
                name:name,
                mobile:mobile,
                address:address,
                state:state,
                city:city,
                pincode:pincode,
                statecode:statecode,
                logo:logo
              }
              Companydetails.updateAll({id:config[0].companyId},data,(err,company)=>{
                if(err) resolve(false)
                else resolve(true)
              })
            }
            else resolve(true)
          }
        })
    })
    let p = await promise
    return p
  }
  Companydetails.remoteMethod('updatedetails', {
    accepts: [
        { arg: 'webname', type: 'string' },
        { arg: 'name', type: 'string' },
        { arg: 'mobile', type: 'any' },
        { arg: 'address', type: 'string' },
        { arg: 'state', type: 'string'},
        { arg: 'city', type: 'string'},
        { arg: 'pincode', type: 'any'},
        { arg: 'statecode', type: 'any'},
        { arg: 'logo', type: 'string'}
    ],
    returns: { arg: 'status', type: 'boolean' },
    "http": { "verb": "post", "path": "/updatedetails" },
  })
};


