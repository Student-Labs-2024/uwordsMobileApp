import 'dart:io';

import 'package:dio/dio.dart';

const SocketException socketException =
    SocketException('Failed to connect to api');

void noInternetCheck(DioException e) {
  if (e.error is SocketException) {
    throw socketException;
  }
}
