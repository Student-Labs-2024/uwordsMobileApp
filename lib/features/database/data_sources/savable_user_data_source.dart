import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_mapper.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

abstract interface class ISavableUserDataSource {
  void saveUser({required UserAuthDto userDto});
}

class SavableUserDataSource implements ISavableUserDataSource {
  final AppDatabase database;
  const SavableUserDataSource(this.database);

  @override
  void saveUser({required UserAuthDto userDto}) {
    database.into(database.userAuth).insertOnConflictUpdate(userDto.toDB());
  }
}
