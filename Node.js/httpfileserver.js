var http = require('http');
var fs = require('fs');

var port = Number(process.argv[2]);
var filepath = process.argv[3];

http.createServer(function(req, res) {

const stream = fs.createReadStream(filepath);
stream.pipe(res);

}).listen(port);