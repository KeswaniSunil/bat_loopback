'use strict';
var mysql = require('mysql')
var fs = require('fs');
let shell = require("shelljs");
const cron = require("node-cron");
let nodemailer = require("nodemailer");
module.exports = function(server) {
  // Install a `/` route that returns server status
  /*let DataSource = require('../datasources')
  
  let con = mysql.createConnection({
    host: DataSource.jdm_main.host,
    user: DataSource.jdm_main.user,
    password: DataSource.jdm_main.password,
    //multipleStatements: true
  });
  let backup = mysql.createConnection({
    host: DataSource.jdm_main.host,
    user: DataSource.jdm_main.user,
    password: DataSource.jdm_main.password,
    database: DataSource.jdm_main.database
    //multipleStatements: true
  });*/
  /********* Backup **********/
  /*let transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: "jbhackers142@gmail.com",
      pass: "******"
    }
  });
  cron.schedule("32 15 * * *", function () {
    console.log("---------------------");
    console.log("Database backup Started");
    backup.connect(function(err) {
      if (err) throw err;
    });
    backup.query("select * from config",function (error,data){
      if(error) throw error
      else{
        data.push({db_name:"mymain",name:"jdm Main"})
        if(data.length > 0)
        {
          for(let i=0;i<data.length;i++)
          {
            if (shell.exec("mysqldump -u "+DataSource.jdm_main.user+" "+ data[i].db_name +" --single-transaction --quick --lock-tables=false > backup/"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql").code !== 0) {
              shell.exit(1);
            } else {
              fs.readFile("./backup/"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql", function (err, content) {
                let mailOptions = {
                  from: "jbhackers142@gmail.com",
                  to: "somanijay22@gmail.com",
                  subject: `Database backup of `+data[i].name,
                  attachments: [{ 'filename': data[i].name+"_"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql", 'content': content }]
                };
                transporter.sendMail(mailOptions, function (error, info) {
                  if (error) {
                    throw error;
                  } else {
                    console.log("Email successfully sent!");
                    fs.unlink("./backup/"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql",(err)=>{})
                    if(i == data.length - 1) shell.echo("Database backup complete");
                  }
                });
              })
            }
          }
        }
      }
    })
  });*/

  var router = server.loopback.Router();
  router.get('/', server.loopback.status());
  /*router.get('/:username/call',(req, res, next)=>{
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
  })*/
  server.use(router);
};
