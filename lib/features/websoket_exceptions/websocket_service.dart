import 'dart:async';
import 'dart:convert';
import 'package:uwords/features/websoket_exceptions/interface_websocket_service.dart';
import 'package:web_socket_channel/io.dart';

abstract interface class IExceptionWebsocketService
    implements IWebsocketService {
  void listenForErrors();
}

class ExceptionWebsocketService extends IExceptionWebsocketService {
  @override
  IOWebSocketChannel? channel;
  late StreamController<String> _errorController;

  @override
  StreamController connect(String url) {
    channel = IOWebSocketChannel.connect(url);
    _errorController = StreamController<String>.broadcast();
    return _errorController;
  }

  @override
  void disconnect() {
    channel?.sink.close();
    _errorController.close();
  }

  @override
  void listenForErrors() {
    channel?.stream.listen((message) {
      message = jsonDecode(message);
      if (message is Map && message.containsKey("msg")) {
        _errorController.sink.add(message["msg"]);
      }
    });
  }
}
