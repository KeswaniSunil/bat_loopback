'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Unit) {
   Unit.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });    
   Unit.unitNames = async function(names){
    let r_p=new Promise((resolve, reject)=>{
        Unit.find({fields:['id','title'],where:{isenabled:1}},(err, Units)=>{
            if(Units.length > 0)
            {
                let values=new Array()
                var j=0
                for(var i=0;i<Units.length;i++)
                {
                    if(Units[i].title.toLowerCase().search(names.toLowerCase()) > -1)
                    {
                        values[j]=new Object()
                        values[j].id=Units[i].id
                        values[j].name=Units[i].title
                        j++
                    }
                }
                resolve(values)
            }
            else {
                resolve("false")
            }
        })
      })
      var values=await r_p
      return values
  }
  Unit.remoteMethod("unitNames",{
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
        "path":"/unitNames"
    }
  })    
};
