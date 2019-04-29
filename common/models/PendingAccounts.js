'use strict';
const uuidV4 = require('uuid/v4');
const mysql = require('mysql')
const fs = require('fs');
let app = require("../../server/server")
let nodemailer = require("nodemailer");
let DataSource = require("../../server/datasources")
let request = require("request")
module.exports = function(PendingAccounts) {
  PendingAccounts.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
  PendingAccounts.sendotp = async function (companyname, email, mobile) {
    let accountinfo = require('../../server/accountinfo')
    let transporter = nodemailer.createTransport({
      service: "gmail",
      auth: accountinfo.email
    });
    let promise = new Promise((resolve,reject)=>{
      let otp = '';
      let digits = '0123456789'; 
      for (let i = 0; i < 6; i++ ) { 
          otp += digits[Math.floor(Math.random() * 10)]; 
      }
      let datetime = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000))
      let expiretime = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000))
      expiretime.setMinutes(expiretime.getMinutes() + 5)
      PendingAccounts.destroyAll({expiretime:{lt:datetime}},(err,del)=>{
        PendingAccounts.find({where:{and:[{companyname:companyname},{email:email},{expiretime:{gte:datetime}}]}},(err,pend)=>{
          let p1 = new Promise(resolve1=>{
            if(pend.length > 0)
            {
              otp=pend[0].otp
              resolve1()
            }
            else {
              PendingAccounts.create({companyname:companyname,email:email,mobile:mobile,otp:otp,expiretime:expiretime.toISOString(),createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()},(err,pendingaccounts)=>{
                resolve1()
              })
            }
          })
          p1.then(resolve1=>{
            let mailOptions = {
              from: "dkmedialinks@gmail.com",
              to: email,
              subject: "Verfication Code ",
              text:"Thanks for registration with our website. This is your otp "+otp
            };
            transporter.sendMail(mailOptions, function (error, info) {
              console.log("OTP: "+otp)
              resolve(true)
            })
          })
        })
      })
    })
    let d = await promise
    return d
  }
  PendingAccounts.remoteMethod('sendotp', {
    accepts: [
        { arg: 'companyname', type: 'any'},
        { arg: 'email', type: 'any' },
        { arg: 'mobile', type: 'any' }
    ],
    returns: { arg: 'status', type: 'boolean' },
    "http": { "verb": "post", "path": "/sendotp" },
  })
  PendingAccounts.verifyotp = async function (cname, mobile,email, password, otp) {
    let promise = new Promise(resolve=>{
      let Companydetails = app.models.Companydetails
      let User = app.models.User
      let Config = app.models.Config
      let datetime = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000))
      PendingAccounts.find({where:{and:[{email:email},{otp:otp},{expiretime:{gte:datetime}}]}},(err,pendingaccounts)=>{
        if(err) resolve(["",false])
        if(pendingaccounts.length > 0) {
          const params = {
            name: pendingaccounts[0].companyname,
            mobile: pendingaccounts[0].mobile
          }
          Companydetails.create(params,(err,companydetails)=>{
            if(err) resolve(["",false])
            User.create({email:email,password:password},(err,user)=>{
              if(err) resolve(["",false])
              PendingAccounts.destroyById(pendingaccounts[0].id,(err,pa)=>{
                if(err) resolve(["",false])
                else {
                  let con = mysql.createConnection({
                    host: DataSource.jdm_main.host,
                    user: DataSource.jdm_main.user,
                    password: DataSource.jdm_main.password,
                    //multipleStatements: true
                  });
                  con.connect(function(err) {
                    if (err) throw err;
                  });
                  Config.find({},(err,configs)=>{
                    let db
                    let i=0
                    let c
                    do{
                      db = i > 0 ?"bat_"+new String(pendingaccounts[0].companyname).replace(/ /g,"_").toLowerCase()+"_"+i : "bat_"+new String(pendingaccounts[0].companyname).replace(/ /g,"_").toLowerCase() 
                      i++
                      c = configs.find(function(c){
                        return c.dbName == db
                      })
                    }while(c != null)
                    console.log(db)
                    con.query('CREATE DATABASE '+db,(err,rs)=>{
                      con = mysql.createConnection({
                        host: DataSource.jdm_main.host,
                        user: DataSource.jdm_main.user,
                        password: DataSource.jdm_main.password,
                        database: db,
                        multipleStatements: true
                      });
                      con.connect(function(err) {
                        if (err) throw err;
                      });
                      let data=fs.readFileSync('./files/db11.sql').toString()
                      con.query(data,(err, rs)=>{
                        if(err) resolve(["",false])
                        else {
                          let settings = DataSource.jdm_main
                          settings.database = db
                          settings.name = db
                          app.dataSource(db,settings);
                          let name= (i-1) > 0 ?new String(companydetails.name).replace(/ /g,"-").toLowerCase()+(i-1) :new String(companydetails.name).replace(/ /g,"-").toLowerCase()
                          Config.create({dbName:db,userId:user.id,companyId:companydetails.id,name:name},(err,config)=>{
                            if(err) resolve(["",false])
                            else {
                              con.end()
                              const params6 = {
                                name: cname,
                                mobile: mobile,
                                password: password,
                                email: email
                              };
                              request.post({url:app.get('url')+name+"/api/PendingAccounts/createaccount",form:params6},(err,httpResponse,body)=>{
                                let body1=JSON.parse(body)
                                if(body1.status){
                                  console.log("Done")
                                  resolve([name,true])
                                }
                                else {
                                  resolve(["",false])
                                }
                              })
                            }
                          })
                        }  
                      })
                    })
                  })
                }
              })
            })
          })
        }
        else {
          resolve(["",false])
        }
      })
    })
    let p =await promise
    return p
  }
  PendingAccounts.remoteMethod('verifyotp', {
    accepts: [
        { arg: 'cname', type: 'any' },
        { arg: 'mobile', type: 'any' },
        { arg: 'email', type: 'any' },
        { arg: 'password', type: 'any'},
        { arg: 'otp', type: 'any' }
    ],
    returns: [{arg: 'webname', type: 'any'},{arg: 'status', type: 'boolean'}],
    "http": { "verb": "post", "path": "/verifyotp" },
  })
  PendingAccounts.createaccount = async function (name,mobile,email,password){
    let promise = new Promise(resolve=>{
      console.log(name+" "+mobile+" "+email+" "+password)
      let User = app.models.User
      let Details = app.models.Details
      let Role = app.models.Role
      let RoleMapping = app.models.RoleMapping
      let Billbook = app.models.Billbook
      let Smstemplate = app.models.Smstemplate
      
      User.create({email:email,password:password},(err,user)=>{
        if(err) resolve(false)
        else{
          Role.find({where:{name:'admin'}},(err,role)=>{
            if(err) resolve(false)
            else{
              RoleMapping.create({principalType:"USER",principalId:user.id,roleId:role[0].id},(err,rolemapping)=>{
                if(err) resolve(false)
                else {
                  let params = {
                    name:name,
                    mobile:mobile,
                    billuppertext:'Tax Invoice',
                    sms:false,
                    createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                    modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString()
                  }
                  Details.create(params,(err,details)=>{
                    if(err) resolve(false)
                    else{
                      let params1 = {
                        title:'default',
                        prefix:'ORD',
                        series:10000,
                        isenabled:1,
                        createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                        modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                        createdById:user.id,
                        modifiedById:user.id
                      }
                      Billbook.create(params1,(err,billbook)=>{
                        if(err) resolve(false)
                        else {
                          let params2 = {
                            title:'Pending Amount',
                            content:'Hello {name}, your pending amount is  {pending}',
                            isenabled:1,
                            createdon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                            modifiedon:new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString(),
                            createdById:user.id,
                            modifiedById:user.id
                          }
                          Smstemplate.create(params2,(err,smstemplate)=>{
                            if(err) resolve(false)
                            else{
                              let accountinfo = require('../../server/accountinfo')
                              let transporter = nodemailer.createTransport({
                                service: "gmail",
                                auth: accountinfo.email
                              });
                              let mailOptions = {
                                from: "dkmedialinks@gmail.com",
                                to: email,
                                subject: "Thanks For registration with us ",
                                text:"Thanks for registration with our website. This is your url http://bat.jdmit.in/"+name+"/login"
                              };
                              transporter.sendMail(mailOptions, function (error, info) {
                                resolve(true)
                              })
                            }
                          })
                        }
                      })
                    }
                  })
                }
              })
            }
          })
        }
      })
    })
    let p = await promise
    return p
  }
  PendingAccounts.remoteMethod('createaccount', {
    accepts: [
      {arg: 'name', type: 'any' },
      {arg: 'mobile', type: 'any' },
      {arg: 'email', type: 'any' },
      {arg: 'password', type: 'any' }
      ],
    returns: { arg: 'status', type: 'boolean' },
    "http": { "verb": "post", "path": "/createaccount" },
  })
  PendingAccounts.validateEmail = async function(email){
    let promise = new Promise(resolve=>{
      let Users = app.models.User
      Users.find({where:{email:email}},(err,user)=>{
        if(user.length > 0) resolve(true)
        else resolve(false)
      })
    })
    let p =await promise
    return p
  }
  PendingAccounts.remoteMethod('validateEmail', {
    accepts: {arg: 'email', type: 'any' },
    returns: { arg: 'status', type: 'boolean' },
    "http": { "verb": "post", "path": "/validateEmail" }
  })
};


