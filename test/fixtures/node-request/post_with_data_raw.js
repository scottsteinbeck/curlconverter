var request = require('request');

var headers = {
    'Content-Type': 'application/x-www-form-urlencoded'
};

var dataString = 'msg1=wow&msg2=such&msg3=@rawmsg';

var options = {
    url: 'http://example.com/post',
    method: 'POST',
    headers: headers,
    body: dataString
};

function callback(error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(body);
    }
}

request(options, callback);
