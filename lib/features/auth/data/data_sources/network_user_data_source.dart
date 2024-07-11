import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/request_bodies/login_request_body.dart';
import 'package:uwords/features/auth/data/request_bodies/register_request_body.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';

class NetworkUserDataSource implements INetworkUserDataSource {
  static Dio dio = Dio();
  final client = AuthClient(dio);

  @override
  Future<UserAuthDto> authorizate(
      {required String userEmail,
      required String password,
      required String provider}) async {
    final LoginRequestBody loginRequestBody = LoginRequestBody(
        provider: provider, email: userEmail, password: password);
    Map<String, String> response = await client.login(loginRequestBody);
    debugPrint(response.toString());
    return UserAuthDto.fromJsonAndOtherFields(
      userEmail: userEmail,
      password: password,
      provider: provider,
      map: response,
    );
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) async {
    debugPrint(userDto.accessToken);
    Map<String, String> newAccessToken =
        await client.refresh("Bearer ${userDto.refreshToken}");
    userDto.changeAccessToken(
        newAccessToken: newAccessToken['access_token'] ?? '');
    debugPrint(newAccessToken.toString());
    return userDto;
  }

  @override
  Future<void> registerUser(
      {required String userEmail, required String password}) async {
    final registerRequestBody = RegisterRequestBody(
      provider: 'self',
      email: userEmail,
      password: password,
      username: '',
      firstname: '',
      lastname: '',
      avatarUrl: '',
      phoneNumber: '',
      birthDate: '',
    );
    print(jsonEncode(registerRequestBody).toString());
    await client.registerUser(jsonEncode(registerRequestBody));
  }

  @override
  Future<void> registerUserFromThirdPartyService(
      {required String userEmail,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber,
      required String provider}) async {
    final registerRequestBody = RegisterRequestBody(
      provider: provider,
      email: userEmail,
      password: password,
      username: username,
      firstname: name,
      lastname: surname,
      avatarUrl: avatarUrl,
      phoneNumber: phoneNumber,
      birthDate: DateTime.now().toString(),
    );
    print(jsonEncode(registerRequestBody.toString()));
    await client.registerUser(jsonEncode(registerRequestBody));
  }
}
