var fs = require('fs');

var filepath = process.argv[2];
var buff = fs.readFileSync(filepath);
var str = buff.toString('ascii');
var count = str.split('\n');
console.log(count.length - 1);
