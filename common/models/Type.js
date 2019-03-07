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
            let values=new Array()
            let j=0
            if(Types.length > 0)
            {
                if(names != null)
                {
                    if(/^[A-Za-z0-9- ]*$/.test(names) == true)
                    {
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
                    }
                }    
                values[j]=new Object()
                values[j].id=0
                values[j].name="<center><div class='col-12 font-14 fa fa-plus' style='border:1px solid #9b9c9c;padding:5px;color:gray'>Add New</div></center>"
                resolve(values)
            }
            else {
                values[j]=new Object()
                values[j].id=0
                values[j].name="<center><div class='col-12 font-14 fa fa-plus' style='border:1px solid #9b9c9c;padding:5px;color:gray'>Add New</div></center>"
                resolve(values)
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
