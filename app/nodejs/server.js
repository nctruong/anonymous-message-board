var io = require('socket.io')(8080);
var redis = require('redis').createClient();

redis.subscribe('amb-channel');

io.on('connection', function (socket) {
  	redis.on('message', function(channel, message){
    	socket.emit('messages-change');
  	});	
});

