'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Customer) {
      Customer.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  Customer.customerNames = async function(names){
    let r_p=new Promise((resolve, reject)=>{
        Customer.find({fields:['id','name'],where:{isenabled:1}},(err, Customers)=>{
            let values=new Array()
            let j=0
            if(Customers.length > 0)
            {
                if(names != null)
                {
                    if(/^[A-Za-z0-9- ]*$/.test(names) == true)
                    {
                        for(var i=0;i<Customers.length;i++)
                        {
                            if(Customers[i].name.toLowerCase().replace(/ /g,"").search(names.toLowerCase().replace(/ /g,"")) > -1)
                            {
                                values[j]=new Object()
                                values[j].id=Customers[i].id
                                values[j].name=Customers[i].name
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
  Customer.remoteMethod("customerNames",{
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
        "path":"/customerNames"
    }
  })
};
