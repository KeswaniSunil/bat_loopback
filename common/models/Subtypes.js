'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Subtypes) {
  Subtypes.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });    
   Subtypes.subTypeNames = async function(names,typeId){
    let r_p=new Promise((resolve, reject)=>{
        console.log(typeId+" "+names)
        if(typeId != null)
        {
        Subtypes.find({fields:['id','name'],where:{isenabled:1,typeId:typeId}},(err, Subtypes)=>{
            if(Subtypes.length > 0 )
            {
                let values=new Array()
                var j=0
                for(var i=0;i<Subtypes.length;i++)
                {
                    if(Subtypes[i].name.toLowerCase().search(names.toLowerCase()) > -1)
                    {
                        values[j]=new Object()
                        values[j].id=Subtypes[i].id
                        values[j].name=Subtypes[i].name
                        j++
                    }
                }
                values[j]=new Object()
                values[j].id=1
                values[j].name="Add New"
                resolve(values)
            }
            else {
                resolve("false")
            }
        })
        }
        else resolve([{id:0,name:"Please Select Type First"}])
      })
        
      var values=await r_p
      return values
  }
  Subtypes.remoteMethod("subTypeNames",{
    accepts:[{
        arg:"names",
        type:"string"
    },
            {
        arg:"typeId",
        type:"string"
    }],
    returns:{
        arg:"values",
        type:"Array"
    },
    "http":{
        "verb":"get",
        "path":"/subTypeNames"
    }
  })    
};
