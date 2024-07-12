import 'package:jwt_decoder/jwt_decoder.dart';

bool isTokenExpired({required String accessToken}) {
  return JwtDecoder.isExpired(accessToken);
}

Map<String, dynamic> decodingToken({required String accessToken}) {
  return JwtDecoder.decode(accessToken);
}
