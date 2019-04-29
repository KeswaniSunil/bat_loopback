'use strict';
var mysql = require('mysql')
var fs = require('fs');
let shell = require("shelljs");
const cron = require("node-cron");
let nodemailer = require("nodemailer");
let request = require('request')
module.exports = function(server) {
  // Install a `/` route that returns server status
  let DataSource = require('../datasources')
  let accountinfo = require('../accountinfo')
  
  let backup = mysql.createConnection({
    host: DataSource.jdm_main.host,
    user: DataSource.jdm_main.user,
    password: DataSource.jdm_main.password,
    database: DataSource.jdm_main.database
    //multipleStatements: true
  });
  /********* Backup **********/
  let transporter = nodemailer.createTransport({
    service: "gmail",
    auth: accountinfo.email
  });
  cron.schedule("55 23 * * *", function () {
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
          if (!fs.existsSync("./backup/"+new Date().toISOString().substr(0,10))){
              fs.mkdirSync("./backup/"+new Date().toISOString().substr(0,10));
          }
          for(let i=0;i<data.length;i++)
          {
            if (shell.exec("mysqldump -h "+DataSource.jdm_main.host+" -u "+DataSource.jdm_main.user+" -p'"+DataSource.jdm_main.password+"' "+ data[i].db_name +" --single-transaction --quick --lock-tables=false > backup/"+new Date().toISOString().substr(0,10)+"/"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql").code !== 0) {
              shell.exit(1);
            } else {
              fs.readFile("./backup/"+new Date().toISOString().substr(0,10)+"/"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql", function (err, content) {
                let mailOptions = {
                  from: "dkmedialinks@gmail.com",
                  to: "somanijay22@gmail.com",
                  subject: `Database backup of `+data[i].name,
                  attachments: [{ 'filename': data[i].name+"_"+data[i].db_name+"_"+new Date().toISOString().substr(0,10)+".sql", 'content': content }]
                };
                transporter.sendMail(mailOptions, function (error, info) {
                  if (error) {
                    throw error;
                  } else {
                    console.log("Email successfully sent!");
                    if(i == data.length - 1) shell.echo("Database backup complete");
                  }
                });
              })
            }
          }
        }
      }
    })
  });

  var router = server.loopback.Router();
  cron.schedule("01 08 * * *", function () {
    let Customers = server.models.Customer
    let Orders = server.models.Orders
    let Smstemplate = server.models.Smstemplate
    let Smslogs = server.models.Smslog
    let Configurations = server.models.Configuration
    let Details = server.models.Details
    Configurations.find({where:{alias:'manage_sms'}},(err,configurations)=>{
      if(configurations.length > 0 ){
        if(configurations[0].value == 1){
          Details.find({},(err,details)=>{
            if(details.length > 0){
              if(details[0].sms) {
                Customers.find({where:{and:[{isenabled:1},{noofdays:{gt:-1}}]}},(err,customer)=>{
                  if(err) console.log(err)
                  else{
                    console.log("SMS Sending start")
                    let promise = new Promise(resolve1=>{
                      let smsdata = [];
                      for (let i = 0, p = Promise.resolve(); i < customer.length; i++) {
                        p = p.then(_ => new Promise(resolve => {
                            let pending = customer[i].totalamount - customer[i].received
                            if(pending > 0)
                            {
                              Orders.find({where:{and:[{isenabled:1},{customerId:customer[i].id}]},order:'billdate desc'},(err,order)=>{
                                if(err) console.log(err)
                                else {
                                  let days = parseInt((new Date(order[0].billdate) - new Date(order[order.length-1].billdate)) / (1000 * 60 * 60 * 24))
                                  if(days > 0) {
                                    for(let j=0,  p1 = Promise.resolve();j<Math.floor(days/customer[i].noofdays);j++) {
                                      p1 = p1.then(_ => new Promise(resolve2 => {
                                        let date = new Date()
                                        date.setDate(date.getDate() - (customer[i].noofdays*(j+1)))
                                        let order1 = order.find(function(c){
                                          return new Date(c.billdate).toISOString().substr(0,10) == date.toISOString().substr(0,10)
                                        })
                                        if(order1) {
                                          Smstemplate.find({where:{title:'Pending Amount'}},(err, smstemplate)=>{
                                            let s = (function(){
                                                let s1 = smstemplate[0].content
                                                s1 = s1.replace(/{name}/g,new String(customer[i].name).toUpperCase())
                                                s1 = s1.replace(/{pending}/g,pending)
                                                s1 = s1.replace(/{new line}/g,'\n')
                                                return s1
                                              })();
                                              request("http://api.msg91.com/api/sendhttp.php?country=91&sender="+new String(details[0].senderid).toUpperCase()+"&route="+details[0].route+"&mobiles="+customer[i].mobile+"&authkey="+details[0].apikey+"&message="+encodeURIComponent(s),function(err3,response1,body1){
                                                if(!err3 && response1.statusCode == 200){
                                                  smsdata.push({smstemplateId:smstemplate[0].id,content:s,customerId:customer[i].id,datetime:new Date(),createdon:new Date()})
                                                  if(i == customer.length-1) resolve1(smsdata)
                                                  else resolve()
                                                }
                                                else {
                                                  if(i == customer.length-1) resolve1(smsdata)
                                                  else resolve()
                                                }
                                              });
                                            })
                                        }
                                        else {
                                          if(j == Math.floor(days/customer[i].noofdays)-1){
                                            if(i == customer.length-1) resolve1(smsdata)
                                            else resolve()
                                          }
                                          else resolve2()
                                        }
                                      }
                                      ))
                                    }
                                  }
                                  else{
                                    if(i == customer.length-1) resolve1(smsdata)
                                    else resolve()
                                  }
                                }
                              })
                            }
                            else{
                              if(i == customer.length-1) resolve1(smsdata)
                              else resolve()
                            }
                          }
                        ))
                      }
                    })
                    promise.then(resolve1=>{
                      Smslogs.create(resolve1,(err,smslogs)=>{
                        if(err) console.log(err)
                        console.log("SMS sent")
                      })
                    })
                  }
                })
              }
            }
          })
        }
      }
    })
  })
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
