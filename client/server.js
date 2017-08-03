var path = require('path')
var express = require('express');
var server = express();

server.use(express.static('.'));
console.log(process.env.PORT)
server.use(express.static(path.join(__dirname, './dist')));
server.listen(process.env.PORT || 5000);
