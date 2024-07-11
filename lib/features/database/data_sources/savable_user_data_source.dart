import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_mapper.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

abstract interface class ISavableUserDataSource {
  void saveUser({required UserAuthDto userDto});
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider});
  Future<void> changeCurrent(
      {required String uEmail, required String provider});
  Future<UserAuthDto> getCurrent();
  Future<void> noneIsCurrent();
  void printAllDatabase();
}

class SavableUserDataSource implements ISavableUserDataSource {
  final AppDatabase database;
  const SavableUserDataSource(this.database);

  @override
  void saveUser({required UserAuthDto userDto}) async {
    var user = await (database.select(database.userAuth)
          ..where((u) =>
              u.email.equals(userDto.email) &
              u.provider.equals(userDto.provider)))
        .getSingleOrNull();
    if (user.runtimeType == Future<User>) {
      debugPrint(user.toString());
      (database.update(database.userAuth)..where((u) => u.accessToken.equals(userDto.accessToken) & u.provider.equals(userDto.provider)))
          .replace(userDto.toDB());
    } else {
      database.into(database.userAuth).insert(userDto.toDB());
    }
  }

  @override
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider}) async {
    return UserAuthDto.fromDB(await (database.select(database.userAuth)
          ..where((u) => u.email.equals(uEmail) & u.provider.equals(provider)))
        .getSingle());
  }

  @override
  Future<void> changeCurrent(
      {required String uEmail, required String provider}) async {
    noneIsCurrent();
    (database.update(database.userAuth)
      ..where((u) => u.email.equals(uEmail) & u.provider.equals(provider))
      ..write(const UserAuthCompanion(isCurrent: Value(true))));
  }

  @override
  Future<void> noneIsCurrent() async {
    (database.update(database.userAuth)
      ..where((u) => u.isCurrent.equals(true))
      ..write(const UserAuthCompanion(isCurrent: Value(false))));
  }

  @override
  Future<UserAuthDto> getCurrent() async {
    return UserAuthDto.fromDB(await (database.select(database.userAuth)
          ..where((u) => u.isCurrent.equals(true)))
        .getSingle());
  }

  @override
  void printAllDatabase() async {
    List<User> users = await database.select(database.userAuth).get();
    users.forEach((u) {
      print([u.email, u.accessToken, u.provider, u.isCurrent.toString()]);
    });
  }
}
