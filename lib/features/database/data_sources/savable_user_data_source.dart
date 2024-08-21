import 'package:drift/drift.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/domain/user_auth_mapper.dart';
import 'package:uwords/features/database/savable_user_exception.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/global/domain/metrics.dart';

abstract interface class ISavableUserDataSource {
  Future<void> saveUser({required UserAuthDto userDto});
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider});
  void changeCurrent({required int id});
  Future<UserAuthDto> getCurrent();
  void noneIsCurrent();
}

class SavableUserDataSource implements ISavableUserDataSource {
  final AppDatabase database;
  const SavableUserDataSource(this.database);

  @override
  Future<void> saveUser({required UserAuthDto userDto}) async {
    try {
      var user = await (database.select(database.userAuth)
            ..where((u) => u.id.equals(userDto.id)))
          .get();
      if (user.runtimeType == List<User>) {
        await (database.delete(database.userAuth)
              ..where((u) => u.id.equals(userDto.id)))
            .go();
      }
    } finally {
      final current = await database
          .into(database.userAuth)
          .insertReturning(userDto.toDB());
      await database.into(database.metricDB).insert(userDto.metricsDto.toDB());
      await database.achievementDB
          .insertAll(userDto.achievements.map((a) => a.toDB()).toList());
      changeCurrent(id: current.id);
    }
  }

  @override
  Future<UserAuthDto> fetchUser(
      {required String uEmail, required String provider}) async {
    User user = await (database.select(database.userAuth)
          ..where((u) => u.email.equals(uEmail) & u.provider.equals(provider)))
        .getSingle();
    Metric metric = await _fetchMetricByUserId(user.id);
    List<Achievement> achievements = await _fetchAchievements(user.id);
    return UserAuthDto.fromDB(user, metric, achievements);
  }

  @override
  void changeCurrent({required int id}) {
    noneIsCurrent();
    (database.update(database.userAuth)
      ..where((u) => u.id.equals(id))
      ..write(const UserAuthCompanion(isCurrent: Value(true))));
  }

  @override
  void noneIsCurrent() {
    (database.update(database.userAuth)
      ..where((u) => u.isCurrent.equals(true))
      ..write(const UserAuthCompanion(isCurrent: Value(false))));
  }

  @override
  Future<UserAuthDto> getCurrent() async {
    try {
      User user = await (database.select(database.userAuth)
            ..where((u) => u.isCurrent.equals(true)))
          .getSingle();
      Metric metric = await _fetchMetricByUserId(user.id);
      List<Achievement> achievements = await _fetchAchievements(user.id);
      return UserAuthDto.fromDB(user, metric, achievements);
    } on Error {
      throw NoneIsCurrentException();
    }
  }

  Future<Metric> _fetchMetricByUserId(int userId) async {
    return await (database.select(database.metricDB)
          ..where((m) => m.userId.equals(userId)))
        .getSingle();
  }

  Future<List<Achievement>> _fetchAchievements(int userId) async {
    return await (database.select(database.achievementDB)
          ..where((a) => a.userId.equals(userId)))
        .get();
  }
}
