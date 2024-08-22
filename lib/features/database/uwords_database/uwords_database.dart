import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'uwords_database.g.dart';

@DataClassName('User')
class UserAuth extends Table {
  IntColumn get id => integer()();
  TextColumn get email => text()();
  TextColumn get username => text()();
  TextColumn get firstname => text()();
  TextColumn get lastname => text()();
  TextColumn get avatarUrl => text()();
  TextColumn get phoneNumber => text()();
  DateTimeColumn get birthDate => dateTime()();
  IntColumn get days => integer()();
  IntColumn get allowedAudioSeconds => integer()();
  IntColumn get allowedVideoSeconds => integer()();
  IntColumn get energy => integer()();
  TextColumn get accessToken => text()();
  TextColumn get refreshToken => text()();
  BoolColumn get isEducationCompleted => boolean()();
  TextColumn get provider => text()();
  BoolColumn get isCurrent => boolean()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Metric')
class MetricDB extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer().references(UserAuth, #id)();
  IntColumn get days => integer()();
  IntColumn get alltimeUserwordsAmount => integer()();
  IntColumn get alltimeLearnedAmount => integer()();
  RealColumn get alltimeLearnedPercents => real()();
  IntColumn get alltimeSpeechSeconds => integer()();
  IntColumn get alltimeVideoSeconds => integer()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Achievement')
class AchievementDB extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer().references(UserAuth, #id)();
  IntColumn get progress => integer()();
  RealColumn get progressPercent => real()();
  BoolColumn get isCompleted => boolean()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get pictureLink => text()();
  TextColumn get category => text()();
  IntColumn get stage => integer()();
  IntColumn get target => integer()();
  IntColumn get achievementId => integer()();
  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [UserAuth, MetricDB, AchievementDB])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
