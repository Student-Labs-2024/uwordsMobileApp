import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_mapper.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

abstract interface class ISavableUserDataSource {
  Future<void> saveUser({required UserAuthDto userDto});
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider});
  Future<void> changeCurrent({required int id});
  Future<UserAuthDto> getCurrent();
  Future<void> noneIsCurrent();
  void printAllDatabase();
}

class SavableUserDataSource implements ISavableUserDataSource {
  final AppDatabase database;
  const SavableUserDataSource(this.database);

  @override
  Future<void> saveUser({required UserAuthDto userDto}) async {
    var user = await (database.select(database.userAuth)
          ..where((u) =>
              u.email.equals(userDto.email) &
              u.provider.equals(userDto.provider)))
        .get();
    if (user.runtimeType == List<User>) {
      await (database.delete(database.userAuth)
            ..where((u) =>
                u.email.equals(userDto.email) &
                u.provider.equals(userDto.provider)))
          .go();
    }
    final current =
        await database.into(database.userAuth).insertReturning(userDto.toDB());
    await changeCurrent(id: current.id);
  }

  @override
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider}) async {
    return UserAuthDto.fromDB(await (database.select(database.userAuth)
          ..where((u) => u.email.equals(uEmail) & u.provider.equals(provider)))
        .getSingle());
  }

  @override
  Future<void> changeCurrent({required int id}) async {
    noneIsCurrent();
    (database.update(database.userAuth)
      ..where((u) => u.id.equals(id))
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
