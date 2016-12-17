const http = require("https")
var url = 'https://www.bitstamp.net/api/v2/ticker/btcusd/';

http.get(url, function(res){
    var body = '';

    res.on('data', function(chunk){
        body += chunk;
    });

    res.on('end', function(){
        var fbResponse = JSON.parse(body);
        console.log(body);
    });
}).on('error', function(e){
    console.log("Got an error: ", e);
});
