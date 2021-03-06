'use strict';

var loopback = require('loopback');
var boot = require('loopback-boot'); 

var app = module.exports = loopback();

app.start = function() {
  // start the web server
  return app.listen(function() {
    app.emit('started');
    var baseUrl = app.get('url').replace(/\/$/, '');
    console.log('Web server listening at: %s', baseUrl);
    if (app.get('loopback-component-explorer')) {
      var explorerPath = app.get('loopback-component-explorer').mountPath;
      console.log('Browse your REST API at %s%s', baseUrl, explorerPath);
    }
  });
};

// Bootstrap the application, configure models, datasources and middleware.
// Sub-apps like REST API are mounted via boot scripts.
boot(app, __dirname, function(err) {
  if (err) throw err;
  app.models.Config.find({fields:['dbName']},(err,Configs)=>{
    for(var x in Configs)
    {
      if(Configs[x].dbName != "jdm_main")
      {
         console.log("Server.js");
        // console.log(configs[x]);
        let DataSource = require('./datasources')
        var settings = {
          "host": DataSource.jdm_main.host,
          "port": DataSource.jdm_main.port,
          "database": Configs[x].dbName,
          "user": DataSource.jdm_main.user,
          "password": DataSource.jdm_main.password,
          "name": Configs[x].dbName,
          "url": DataSource.jdm_main.url,
          "timezone": "IST",
          "connector": require('loopback-connector-mysql'),
         };          // Hold a reference to dataSource
         app.dataSource(''+Configs[x].dbName,settings);
      }
    }
  })
  
  // start the server if `$ node server.js`
  if (require.main === module)
  {
    app.start();
  }
});
