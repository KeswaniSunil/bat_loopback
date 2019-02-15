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
                if(Transports.length > 0)
                {
                    let values=new Array()
                    var j=0
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
                    values[j]=new Object()
                    values[j].id=0
                    values[j].name="<center><div class='col-12 font-14 fa fa-plus' style='border:1px solid #9b9c9c;padding:5px;color:gray'>Add New</div></center>"
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
};