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
        if(typeId != null)
        {
            Subtypes.find({fields:['id','name'],where:{isenabled:1,typeId:typeId}},(err, Subtypes)=>{
                let values=new Array()
                let j=0
                if(Subtypes.length > 0 )
                {
                    if(/^[A-Za-z0-9- ]*$/.test(names) == true)
                    {
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
