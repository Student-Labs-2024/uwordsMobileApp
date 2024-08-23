import 'dart:async';

import 'package:web_socket_channel/io.dart';

abstract interface class IWebsocketService {
  IOWebSocketChannel? channel;
  Future<void> connect(
      String url, StreamController<String> errorStreamController);
  void disconnect();
}
