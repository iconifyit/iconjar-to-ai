#! /usr/local/bin/node

var fs   = require('fs');
var zlib = require('zlib');

try {

    var meta = require('./module');

    console.log('Creating zlib Unzip');
    var unzip  = zlib.createUnzip();

    console.log('Setting  up input and output streams');

    var input  = fs.createReadStream(decodeURI(meta.inputfile));
    var output = fs.createWriteStream(decodeURI(meta.outputfile));

    console.log(decodeURI(meta.inputfile));
    console.log(decodeURI(meta.outputfile));

    console.log('Create META.json');
    input.pipe(unzip).pipe(output);
}
catch(e) {
    console.log(e.message);
}