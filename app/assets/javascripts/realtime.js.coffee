window.socket_io =
  connect: () ->
    window.soi = {}
    window.soi.socket = io.connect('http://0.0.0.0:8080');
    window.soi.socket.on 'messages-change', () ->
      $('.list_view').load( "/messages/list .message_container" );

