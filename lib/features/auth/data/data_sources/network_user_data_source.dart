import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
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
    try {
      final response = await client.login(jsonEncode(loginRequestBody));
      return UserAuthDto.fromJsonAndOtherFields(
        userEmail: userEmail,
        password: password,
        provider: provider,
        map: response.data,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 404) {
          throw NotRegisteredException();
        } else {
          rethrow;
        }
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) async {
    Map<String, String> newAccessToken =
        await client.refresh("Bearer ${userDto.refreshToken}");
    userDto.changeAccessToken(
        newAccessToken: newAccessToken['access_token'] ?? '');
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
    );
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
    );
    await client.registerUser(jsonEncode(registerRequestBody));
  }
}
