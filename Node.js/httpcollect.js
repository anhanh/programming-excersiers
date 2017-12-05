var http = require('http');
var bl = require('bl');

var url = process.argv[2];

http.get(url, function (response) {

    response.setEncoding('utf8');
    // response.pipe(bl(function(err, data) {
    //     console.log(data.length);                
    //     console.log(data.toString('utf8'));        
    // }));
    var body = '';
    response.on('data', function(data) {
        body += data;
    })
    response.on('end', function () {
        console.log(body.length);
        console.log(body);
        
    })
    
}).on('error', function(e) {
    console.log('Error with the request:', e.message);
});