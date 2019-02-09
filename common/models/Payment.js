'use strict';

/*module.exports = function(Payment) {
  Payment.getId = async function(typeName,cb) {
        
    Payment.create({type:'Bob'}, function(err, user) {
  console.log(user[0].id instanceof Payment); // true
        cb(null,user)
});
    }
    Payment.remoteMethod('getN',{
        accepts: {arg: 'typeName', type: 'string'},
        returns: {arg: 'id', type: 'string'},
        "http": {"verb": "post", "path": "/getId"},
    })
     
};*/

const uuidV4 = require('uuid/v4');
module.exports = function(Payment) {
  Payment.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
};
