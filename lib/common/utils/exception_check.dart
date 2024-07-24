import 'dart:io';

const SocketException socketException =
    SocketException('Failed to connect to api');

void noInternetCheck(Exception e) {
  if (e is SocketException) {
    throw socketException;
  }
}
