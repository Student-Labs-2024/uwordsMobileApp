import 'dart:async';

import 'package:web_socket_channel/io.dart';

abstract interface class IWebsocketService {
  IOWebSocketChannel? channel;
  Future<StreamController> connect(String url);
  void disconnect();
}
