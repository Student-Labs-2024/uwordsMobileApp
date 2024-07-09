// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uwords_database.dart';

// ignore_for_file: type=lint
class $UserAuthTable extends UserAuth with TableInfo<$UserAuthTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserAuthTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accessTokenMeta =
      const VerificationMeta('accessToken');
  @override
  late final GeneratedColumn<String> accessToken = GeneratedColumn<String>(
      'access_token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _refreshTokenMeta =
      const VerificationMeta('refreshToken');
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
      'refresh_token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isEducationCompletedMeta =
      const VerificationMeta('isEducationCompleted');
  @override
  late final GeneratedColumn<bool> isEducationCompleted = GeneratedColumn<bool>(
      'is_education_completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_education_completed" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [email, accessToken, refreshToken, isEducationCompleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_auth';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('access_token')) {
      context.handle(
          _accessTokenMeta,
          accessToken.isAcceptableOrUnknown(
              data['access_token']!, _accessTokenMeta));
    } else if (isInserting) {
      context.missing(_accessTokenMeta);
    }
    if (data.containsKey('refresh_token')) {
      context.handle(
          _refreshTokenMeta,
          refreshToken.isAcceptableOrUnknown(
              data['refresh_token']!, _refreshTokenMeta));
    } else if (isInserting) {
      context.missing(_refreshTokenMeta);
    }
    if (data.containsKey('is_education_completed')) {
      context.handle(
          _isEducationCompletedMeta,
          isEducationCompleted.isAcceptableOrUnknown(
              data['is_education_completed']!, _isEducationCompletedMeta));
    } else if (isInserting) {
      context.missing(_isEducationCompletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {email};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      accessToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}access_token'])!,
      refreshToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refresh_token'])!,
      isEducationCompleted: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_education_completed'])!,
    );
  }

  @override
  $UserAuthTable createAlias(String alias) {
    return $UserAuthTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String email;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  const User(
      {required this.email,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['email'] = Variable<String>(email);
    map['access_token'] = Variable<String>(accessToken);
    map['refresh_token'] = Variable<String>(refreshToken);
    map['is_education_completed'] = Variable<bool>(isEducationCompleted);
    return map;
  }

  UserAuthCompanion toCompanion(bool nullToAbsent) {
    return UserAuthCompanion(
      email: Value(email),
      accessToken: Value(accessToken),
      refreshToken: Value(refreshToken),
      isEducationCompleted: Value(isEducationCompleted),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      email: serializer.fromJson<String>(json['email']),
      accessToken: serializer.fromJson<String>(json['accessToken']),
      refreshToken: serializer.fromJson<String>(json['refreshToken']),
      isEducationCompleted:
          serializer.fromJson<bool>(json['isEducationCompleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'email': serializer.toJson<String>(email),
      'accessToken': serializer.toJson<String>(accessToken),
      'refreshToken': serializer.toJson<String>(refreshToken),
      'isEducationCompleted': serializer.toJson<bool>(isEducationCompleted),
    };
  }

  User copyWith(
          {String? email,
          String? accessToken,
          String? refreshToken,
          bool? isEducationCompleted}) =>
      User(
        email: email ?? this.email,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('email: $email, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(email, accessToken, refreshToken, isEducationCompleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.email == this.email &&
          other.accessToken == this.accessToken &&
          other.refreshToken == this.refreshToken &&
          other.isEducationCompleted == this.isEducationCompleted);
}

class UserAuthCompanion extends UpdateCompanion<User> {
  final Value<String> email;
  final Value<String> accessToken;
  final Value<String> refreshToken;
  final Value<bool> isEducationCompleted;
  final Value<int> rowid;
  const UserAuthCompanion({
    this.email = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.isEducationCompleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserAuthCompanion.insert({
    required String email,
    required String accessToken,
    required String refreshToken,
    required bool isEducationCompleted,
    this.rowid = const Value.absent(),
  })  : email = Value(email),
        accessToken = Value(accessToken),
        refreshToken = Value(refreshToken),
        isEducationCompleted = Value(isEducationCompleted);
  static Insertable<User> custom({
    Expression<String>? email,
    Expression<String>? accessToken,
    Expression<String>? refreshToken,
    Expression<bool>? isEducationCompleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (email != null) 'email': email,
      if (accessToken != null) 'access_token': accessToken,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (isEducationCompleted != null)
        'is_education_completed': isEducationCompleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserAuthCompanion copyWith(
      {Value<String>? email,
      Value<String>? accessToken,
      Value<String>? refreshToken,
      Value<bool>? isEducationCompleted,
      Value<int>? rowid}) {
    return UserAuthCompanion(
      email: email ?? this.email,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (accessToken.present) {
      map['access_token'] = Variable<String>(accessToken.value);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    if (isEducationCompleted.present) {
      map['is_education_completed'] =
          Variable<bool>(isEducationCompleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAuthCompanion(')
          ..write('email: $email, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $UserAuthTable userAuth = $UserAuthTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userAuth];
}

typedef $$UserAuthTableInsertCompanionBuilder = UserAuthCompanion Function({
  required String email,
  required String accessToken,
  required String refreshToken,
  required bool isEducationCompleted,
  Value<int> rowid,
});
typedef $$UserAuthTableUpdateCompanionBuilder = UserAuthCompanion Function({
  Value<String> email,
  Value<String> accessToken,
  Value<String> refreshToken,
  Value<bool> isEducationCompleted,
  Value<int> rowid,
});

class $$UserAuthTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserAuthTable,
    User,
    $$UserAuthTableFilterComposer,
    $$UserAuthTableOrderingComposer,
    $$UserAuthTableProcessedTableManager,
    $$UserAuthTableInsertCompanionBuilder,
    $$UserAuthTableUpdateCompanionBuilder> {
  $$UserAuthTableTableManager(_$AppDatabase db, $UserAuthTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserAuthTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserAuthTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UserAuthTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> email = const Value.absent(),
            Value<String> accessToken = const Value.absent(),
            Value<String> refreshToken = const Value.absent(),
            Value<bool> isEducationCompleted = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserAuthCompanion(
            email: email,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String email,
            required String accessToken,
            required String refreshToken,
            required bool isEducationCompleted,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserAuthCompanion.insert(
            email: email,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            rowid: rowid,
          ),
        ));
}

class $$UserAuthTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $UserAuthTable,
    User,
    $$UserAuthTableFilterComposer,
    $$UserAuthTableOrderingComposer,
    $$UserAuthTableProcessedTableManager,
    $$UserAuthTableInsertCompanionBuilder,
    $$UserAuthTableUpdateCompanionBuilder> {
  $$UserAuthTableProcessedTableManager(super.$state);
}

class $$UserAuthTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserAuthTable> {
  $$UserAuthTableFilterComposer(super.$state);
  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get accessToken => $state.composableBuilder(
      column: $state.table.accessToken,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get refreshToken => $state.composableBuilder(
      column: $state.table.refreshToken,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isEducationCompleted => $state.composableBuilder(
      column: $state.table.isEducationCompleted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserAuthTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserAuthTable> {
  $$UserAuthTableOrderingComposer(super.$state);
  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get accessToken => $state.composableBuilder(
      column: $state.table.accessToken,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get refreshToken => $state.composableBuilder(
      column: $state.table.refreshToken,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isEducationCompleted => $state.composableBuilder(
      column: $state.table.isEducationCompleted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$UserAuthTableTableManager get userAuth =>
      $$UserAuthTableTableManager(_db, _db.userAuth);
}
