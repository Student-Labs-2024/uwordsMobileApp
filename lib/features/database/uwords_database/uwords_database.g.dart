// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uwords_database.dart';

// ignore_for_file: type=lint
class $UserAuthTable extends UserAuth with TableInfo<$UserAuthTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserAuthTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  static const VerificationMeta _providerMeta =
      const VerificationMeta('provider');
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
      'provider', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCurrentMeta =
      const VerificationMeta('isCurrent');
  @override
  late final GeneratedColumn<bool> isCurrent = GeneratedColumn<bool>(
      'is_current', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_current" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        email,
        accessToken,
        refreshToken,
        isEducationCompleted,
        provider,
        isCurrent
      ];
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
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
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
    if (data.containsKey('provider')) {
      context.handle(_providerMeta,
          provider.isAcceptableOrUnknown(data['provider']!, _providerMeta));
    } else if (isInserting) {
      context.missing(_providerMeta);
    }
    if (data.containsKey('is_current')) {
      context.handle(_isCurrentMeta,
          isCurrent.isAcceptableOrUnknown(data['is_current']!, _isCurrentMeta));
    } else if (isInserting) {
      context.missing(_isCurrentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      accessToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}access_token'])!,
      refreshToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refresh_token'])!,
      isEducationCompleted: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_education_completed'])!,
      provider: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}provider'])!,
      isCurrent: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_current'])!,
    );
  }

  @override
  $UserAuthTable createAlias(String alias) {
    return $UserAuthTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String email;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final bool isCurrent;
  const User(
      {required this.id,
      required this.email,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required this.provider,
      required this.isCurrent});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['access_token'] = Variable<String>(accessToken);
    map['refresh_token'] = Variable<String>(refreshToken);
    map['is_education_completed'] = Variable<bool>(isEducationCompleted);
    map['provider'] = Variable<String>(provider);
    map['is_current'] = Variable<bool>(isCurrent);
    return map;
  }

  UserAuthCompanion toCompanion(bool nullToAbsent) {
    return UserAuthCompanion(
      id: Value(id),
      email: Value(email),
      accessToken: Value(accessToken),
      refreshToken: Value(refreshToken),
      isEducationCompleted: Value(isEducationCompleted),
      provider: Value(provider),
      isCurrent: Value(isCurrent),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      accessToken: serializer.fromJson<String>(json['accessToken']),
      refreshToken: serializer.fromJson<String>(json['refreshToken']),
      isEducationCompleted:
          serializer.fromJson<bool>(json['isEducationCompleted']),
      provider: serializer.fromJson<String>(json['provider']),
      isCurrent: serializer.fromJson<bool>(json['isCurrent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'accessToken': serializer.toJson<String>(accessToken),
      'refreshToken': serializer.toJson<String>(refreshToken),
      'isEducationCompleted': serializer.toJson<bool>(isEducationCompleted),
      'provider': serializer.toJson<String>(provider),
      'isCurrent': serializer.toJson<bool>(isCurrent),
    };
  }

  User copyWith(
          {int? id,
          String? email,
          String? accessToken,
          String? refreshToken,
          bool? isEducationCompleted,
          String? provider,
          bool? isCurrent}) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
        provider: provider ?? this.provider,
        isCurrent: isCurrent ?? this.isCurrent,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('provider: $provider, ')
          ..write('isCurrent: $isCurrent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, accessToken, refreshToken,
      isEducationCompleted, provider, isCurrent);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.email == this.email &&
          other.accessToken == this.accessToken &&
          other.refreshToken == this.refreshToken &&
          other.isEducationCompleted == this.isEducationCompleted &&
          other.provider == this.provider &&
          other.isCurrent == this.isCurrent);
}

class UserAuthCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> accessToken;
  final Value<String> refreshToken;
  final Value<bool> isEducationCompleted;
  final Value<String> provider;
  final Value<bool> isCurrent;
  const UserAuthCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.isEducationCompleted = const Value.absent(),
    this.provider = const Value.absent(),
    this.isCurrent = const Value.absent(),
  });
  UserAuthCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String accessToken,
    required String refreshToken,
    required bool isEducationCompleted,
    required String provider,
    required bool isCurrent,
  })  : email = Value(email),
        accessToken = Value(accessToken),
        refreshToken = Value(refreshToken),
        isEducationCompleted = Value(isEducationCompleted),
        provider = Value(provider),
        isCurrent = Value(isCurrent);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? accessToken,
    Expression<String>? refreshToken,
    Expression<bool>? isEducationCompleted,
    Expression<String>? provider,
    Expression<bool>? isCurrent,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (accessToken != null) 'access_token': accessToken,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (isEducationCompleted != null)
        'is_education_completed': isEducationCompleted,
      if (provider != null) 'provider': provider,
      if (isCurrent != null) 'is_current': isCurrent,
    });
  }

  UserAuthCompanion copyWith(
      {Value<int>? id,
      Value<String>? email,
      Value<String>? accessToken,
      Value<String>? refreshToken,
      Value<bool>? isEducationCompleted,
      Value<String>? provider,
      Value<bool>? isCurrent}) {
    return UserAuthCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
      provider: provider ?? this.provider,
      isCurrent: isCurrent ?? this.isCurrent,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
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
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (isCurrent.present) {
      map['is_current'] = Variable<bool>(isCurrent.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAuthCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('provider: $provider, ')
          ..write('isCurrent: $isCurrent')
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
  Value<int> id,
  required String email,
  required String accessToken,
  required String refreshToken,
  required bool isEducationCompleted,
  required String provider,
  required bool isCurrent,
});
typedef $$UserAuthTableUpdateCompanionBuilder = UserAuthCompanion Function({
  Value<int> id,
  Value<String> email,
  Value<String> accessToken,
  Value<String> refreshToken,
  Value<bool> isEducationCompleted,
  Value<String> provider,
  Value<bool> isCurrent,
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
            Value<int> id = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> accessToken = const Value.absent(),
            Value<String> refreshToken = const Value.absent(),
            Value<bool> isEducationCompleted = const Value.absent(),
            Value<String> provider = const Value.absent(),
            Value<bool> isCurrent = const Value.absent(),
          }) =>
              UserAuthCompanion(
            id: id,
            email: email,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            provider: provider,
            isCurrent: isCurrent,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String email,
            required String accessToken,
            required String refreshToken,
            required bool isEducationCompleted,
            required String provider,
            required bool isCurrent,
          }) =>
              UserAuthCompanion.insert(
            id: id,
            email: email,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            provider: provider,
            isCurrent: isCurrent,
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
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

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

  ColumnFilters<String> get provider => $state.composableBuilder(
      column: $state.table.provider,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCurrent => $state.composableBuilder(
      column: $state.table.isCurrent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserAuthTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserAuthTable> {
  $$UserAuthTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

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

  ColumnOrderings<String> get provider => $state.composableBuilder(
      column: $state.table.provider,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCurrent => $state.composableBuilder(
      column: $state.table.isCurrent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$UserAuthTableTableManager get userAuth =>
      $$UserAuthTableTableManager(_db, _db.userAuth);
}
