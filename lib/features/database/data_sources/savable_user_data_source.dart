import 'package:drift/drift.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_mapper.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

abstract interface class ISavableUserDataSource {
  void saveUser({required UserAuthDto userDto});
  Future<User> fetchUser({required String uEmail, required String provider});
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
        .getSingle();
    if (user.runtimeType == User) {
      (database.update(database.userAuth)..where((u) => u.id.equals(user.id)))
          .replace(userDto.toDB());
    } else {
      database.into(database.userAuth).insert(userDto.toDB());
    }
  }

  @override
  Future<User> fetchUser({required String uEmail, required String provider}) {
    return (database.select(database.userAuth)
          ..where((u) => u.email.equals(uEmail) & u.provider.equals(provider)))
        .getSingle();
  }
}
