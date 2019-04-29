'use strict';
const uuidV4 = require('uuid/v4');
let app = require("../../server/server")
module.exports = function(Details) {
  Details.observe('before save', function(ctx, cb){
    if (ctx.instance) {
      ctx.instance.id = uuidV4();
    } else {
      ctx.data.id = uuidV4();
    }
    cb();
  });
};
