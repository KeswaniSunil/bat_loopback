var app = require("./server");
var data = app.dataSources.jdm_main;
data.automigrate('Companydetails', function(err){
if(err) throw err;
data.disconnect();
console.log("created");    
})