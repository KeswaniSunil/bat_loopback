'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Config) {
      Config.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
    Config.createDatasources = async function(username){
        let r_p=new Promise((resolve, reject)=>{
            Config.find({fields:['dbName'], where:{name:username}},(err, Configs)=>{
                if(Configs.length > 0)
                {
                    var DataSource = require('loopback-datasource-juggler').DataSource;

                    var sqlConnector = require('loopback-connector-mysql');

                    var settings = {
                        "host": "localhost",
                        "port": 3306,
                        "database": Configs[0].dbName,
                        "user": "root",
                        "password": "",
                        "name": Configs[0].dbName,
                        "url": "",
                        "connector": require('loopback-connector-mysql'),
                    };          // Hold a reference to dataSource
                    var app = require('../../server/server')
                    app.dataSource(''+Configs[0].dbName,settings);
                    resolve("true")
                }
                else {
                    resolve("false")
                }
            })
        })
        var status=await r_p
        
        //console.log(roleName1)
        //return roleNames;
        return username
    }
    Config.remoteMethod("createDatasources",{
        accepts:{
            arg:"username",
            type:"string"
        },
        returns:{
            arg:"abc",
            type:"string"
        },
        "http":{
            "verb":"get",
            "path":"/createDatasources"
        }
    })
};
