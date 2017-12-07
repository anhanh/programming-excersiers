var http = require('http');
var bl = require('bl');

var result = [];
var count = 0;

function printResult() {
    for (let i = 0; i < 3; i++) {
        console.log(result[i]);        
    }
}
function httpGet(index) {

    http.get(process.argv[index + 2], function (response) {

        response.pipe(bl(function (err, data) {
            result[index] = data.toString('utf8');
            count++;

            if (count == 3) {
                printResult();
            }
        }));



    }).on('error', function (e) {
        console.log('Error with the request:', e.message);
    });

}

for (let i = 0; i < 3; i++) {
    httpGet(i);
}