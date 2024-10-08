import 'package:jwt_decoder/jwt_decoder.dart';

bool isTokenExpired({required String token}) {
  return JwtDecoder.isExpired(token);
}

Map<String, dynamic> decodingToken({required String accessToken}) {
  return JwtDecoder.decode(accessToken);
}

String joinTokenTypeAndToken(
    {required String tokenType, required String token}) {
  return "$tokenType $token";
}
