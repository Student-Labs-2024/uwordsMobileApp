import 'package:uwords/features/database/uwords_database/uwords_database.dart';

abstract interface class ISavableUserDataSource {
  void saveUser();
}

class SavableUserDataSource implements ISavableUserDataSource {
  final AppDatabase database;
  const SavableUserDataSource(this.database);

  @override
  void saveUser() {
    // TODO: implement saveUser
  }
}
