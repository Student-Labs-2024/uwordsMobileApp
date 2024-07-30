import 'package:uwords/features/websoket_exceptions/interface_websocket_service.dart';
import 'package:web_socket_channel/io.dart';

abstract interface class IExceptionWebsocketService
    implements IWebsocketService {
  void listenForErrors(Function(String message) onError);
}

class ExceptionWebsocketService extends IExceptionWebsocketService {
  IOWebSocketChannel? _channel;
  Function? _onError;

  @override
  void connect(String url) {
    _channel = IOWebSocketChannel.connect(url);
  }

  @override
  void disconnect() {
    _channel?.sink.close();
  }

  @override
  void listenForErrors(Function(String message) onError) {
    _onError = onError;
    _channel?.stream.listen((message) {
      if (message is Map && message.containsKey('msg')) {
        _onError!(message['msg']);
      }
    });
  }
}
