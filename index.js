var koa = require('koa');
var app = koa();

var listenPort = process.env.PORT || 3000;

app.use(function *(){
  this.body = 'Hello World';
});

app.listen(listenPort);
