let app = require('../server');
module.exports = function(options) {
  return function(req, res, next) {
    let Config= app.models.Config
    //console.log(Config) 
    let d=req.url.split('/')[1]
     if(req.url.search('explorer') > -1)
     {
        next();
     }
     else{
     Config.find({include:['company'],where:{name:d}},function(err, configs){
        // let dbName=new Array();
        // for(let i=0;i<configs.length;i++)
        // {
        //     let p=configs[i].toJSON();
        //     if(p.company.name == d)
        //     {
        //         dbName[0]=configs[i].dbName
        //         break;
        //     }
        // }
        if(configs.length > 0)
        {
            //console.log(configs)
            let models = app.models();
            let dtsrc=configs[0].dbName
                //let dataSourceName = Model.getDataSource().settings.name;
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