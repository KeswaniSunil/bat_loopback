'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Items) {
  Items.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Items.itemNames = async function(names){
    let r_p=new Promise((resolve, reject)=>{
        Items.find({fields:['id','name'],where:{isenabled:1}},(err, Item)=>{
            if(Item.length > 0)
            {
                let values=new Array()
                var j=0
                for(var i=0;i<Item.length;i++)
                {
                    //console.log(Item[i])
                    if(Item[i].name.toLowerCase().search(names.toLowerCase()) > -1)
                    {
                        values[j]=new Object()
                        values[j].id=Item[i].id
                        values[j].name=Item[i].name
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
  Items.remoteMethod("itemNames",{
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
        "path":"/itemNames"
    }
  }) 
};