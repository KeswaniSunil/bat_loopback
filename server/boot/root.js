'use strict';
var mysql = require('mysql')
var fs = require('fs');
module.exports = function(server) {
  // Install a `/` route that returns server status
  let DataSource = require('../datasources')
  
  let con = mysql.createConnection({
    host: DataSource.jdm_main.host,
    user: DataSource.jdm_main.user,
    password: DataSource.jdm_main.password,
    //multipleStatements: true
  });
  var router = server.loopback.Router();
  router.get('/', server.loopback.status());
  router.get('/:username/call',(req, res, next)=>{
    //console.log(req.params)
    if(req.query.dbName == null)
    {
      res.write("404")
      res.end()
    }
    else{
      con.connect(function(err) {
        if (err) throw err;
      });
      con.query('CREATE DATABASE '+req.query.dbName,(err,rs)=>{
        con = mysql.createConnection({
          host: DataSource.jdm_main.host,
          user: DataSource.jdm_main.user,
          password: DataSource.jdm_main.password,
          database: req.query.dbName,
          multipleStatements: true
        });
        con.connect(function(err) {
          if (err) throw err;
        });
        var data=fs.readFileSync('files/db1.sql').toString()
        //console.log(data)  
        con.query(data,(err, rs)=>{
            if(err) throw err
              res.write("call")
              res.end()
        })
        
      })
    }
  })
  server.use(router);
};
