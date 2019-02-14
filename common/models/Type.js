'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Type) {
  Type.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });    
    Type.typeNames = async function(names){
    let r_p=new Promise((resolve, reject)=>{
        Type.find({fields:['id','name'],where:{isenabled:1}},(err, Types)=>{
            if(Types.length > 0)
            {
                let values=new Array()
                var j=0
                for(var i=0;i<Types.length;i++)
                {
                    if(Types[i].name.toLowerCase().search(names.toLowerCase()) > -1)
                    {
                        values[j]=new Object()
                        values[j].id=Types[i].id
                        values[j].name=Types[i].name
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
  Type.remoteMethod("typeNames",{
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
        "path":"/typeNames"
    }
  })
};
