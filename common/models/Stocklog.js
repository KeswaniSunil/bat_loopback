'use strict';
const uuidV4 = require('uuid/v4');
module.exports = function(Stocklog) {
  Stocklog.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    console.log(ctx)
    cb();
  });    
};
