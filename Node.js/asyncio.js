var fs = require('fs');

fs.readFile(process.argv[2], function (err, buff) {

    if (err) {
        throw err;
        return;
    }

    var str = buff.toString('ascii');
    var count = str.split('\n');
    console.log(count.length - 1);

});


