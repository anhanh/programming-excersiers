var net = require('net');
var port = Number(process.argv[2]);

function zeroFill(n) {
    return (n < 10 ? '0' : '') + n;
}

function now() {

    var date = new Date();
    return date.getFullYear()  + '-'
             + zeroFill(date.getMonth() + 1) + '-' 
             + zeroFill(date.getDate()) + ' ' 
             + zeroFill(date.getHours()) + ':' 
             + zeroFill(date.getMinutes());
}

net.createServer(function(socket) {

    socket.end(now() + '\n');

}).listen(port);
