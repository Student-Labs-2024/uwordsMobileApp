import 'package:drift/drift.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_model.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

extension UserAuthMapper on UserAuthDto {
  UserAuthModel toModel() => UserAuthModel(
      id: id,
      email: email,
      username: username,
      firstname: firstname,
      lastname: lastname,
      avatarUrl: avatarUrl,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
      accessToken: accessToken,
      refreshToken: refreshToken,
      isEducationCompleted: isEducationCompleted,
      provider: provider);
  UserAuthCompanion toDB() => UserAuthCompanion(
        id: Value(id),
        email: Value(email),
        username: Value(username),
        firstname: Value(firstname),
        lastname: Value(lastname),
        avatarUrl: Value(avatarUrl),
        phoneNumber: Value(phoneNumber),
        birthDate: Value(birthDate),
        accessToken: Value(accessToken),
        refreshToken: Value(refreshToken),
        isEducationCompleted: Value(isEducationCompleted),
        provider: Value(provider),
        isCurrent: const Value(true),
      );
}
