var http = require('http');
var url = process.argv[2];

var httpRequest = http.get(url, function (response) {

    response.setEncoding('utf8');
    response.on('data', function (d) {
        console.log(d);
    });
    
});

httpRequest.on('error', function(e) {
    console.log('Error with the request:', e.message);
});