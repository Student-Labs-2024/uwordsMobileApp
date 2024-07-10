import 'package:drift/drift.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_model.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

extension UserAuthMapper on UserAuthDto {
  UserAuthModel toModel() => UserAuthModel(
      email: email,
      accessToken: accessToken,
      refreshToken: refreshToken,
      isEducationCompleted: isEducationCompleted,
      provider: provider);
  UserAuthCompanion toDB() => UserAuthCompanion(
        email: Value(email),
        accessToken: Value(accessToken),
        refreshToken: Value(refreshToken),
        isEducationCompleted: Value(isEducationCompleted),
        provider: Value(provider),
      );
}
