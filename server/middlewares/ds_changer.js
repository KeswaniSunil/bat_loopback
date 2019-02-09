var app = require('../server');
module.exports = function(options) {
  return function(req, res, next) {
    var Config= app.models.Config
     var d=req.url.split('/')[1]
     if(req.url.search('explorer') > -1)
     {
        next();
     }
     else{
     Config.find({fields:['dbName'],include:['Companydetails'],where:{name:d}}, function(err, configs){
        if(configs.length > 0)
        {
            var models = app.models();
            var dtsrc=configs[0].dbName
                //var dataSourceName = Model.getDataSource().settings.name;
                //console.log("////////////////////////////////////////////////00000000000")
                //console.log(app.dataSources[dtsrc])
            models.forEach(function(model) {
                if(model.modelName != 'Config' && model.modelName != 'Companydetails'){
                    model.attachTo(app.dataSources[dtsrc]);
                }
                    //console.log(model.modelName)
            });
            next();
        }
        else{
            res.write("404");
            res.end()
        }
    })
    }
    
  }
}