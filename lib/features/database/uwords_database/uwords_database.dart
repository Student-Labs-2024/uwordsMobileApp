import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';

part 'uwords_database.g.dart';

@DataClassName('User')
class UserAuth extends Table {
  IntColumn get id => integer()();
  TextColumn get email => text()();
  TextColumn get accessToken => text()();
  TextColumn get refreshToken => text()();
  BoolColumn get isEducationCompleted => boolean()();
  TextColumn get provider => text()();
  BoolColumn get isCurrent => boolean()();
  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [UserAuth])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
