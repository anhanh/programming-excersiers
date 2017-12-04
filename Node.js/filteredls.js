var fs = require('fs');
var path = require('path');

var extension = process.argv[3];

fs.readdir(process.argv[2], function (err, list) {

    if (err)
        throw err;
        
    list.filter(extensionFilter).forEach(function (value) {
        console.log(value);
    }); 
});

function extensionFilter(element) {
    return path.extname(element) === '.' + extension;
}