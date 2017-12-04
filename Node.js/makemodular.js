var mymodule = require('./mymodul');

mymodule(process.argv[2], process.argv[3], function(err, list) {
    if (err)
        throw err;
    list.forEach(element => {
        console.log(element);        
    });
});
