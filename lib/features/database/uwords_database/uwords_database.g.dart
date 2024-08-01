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
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstnameMeta =
      const VerificationMeta('firstname');
  @override
  late final GeneratedColumn<String> firstname = GeneratedColumn<String>(
      'firstname', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastnameMeta =
      const VerificationMeta('lastname');
  @override
  late final GeneratedColumn<String> lastname = GeneratedColumn<String>(
      'lastname', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarUrlMeta =
      const VerificationMeta('avatarUrl');
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
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
        username,
        firstname,
        lastname,
        avatarUrl,
        phoneNumber,
        birthDate,
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
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('firstname')) {
      context.handle(_firstnameMeta,
          firstname.isAcceptableOrUnknown(data['firstname']!, _firstnameMeta));
    } else if (isInserting) {
      context.missing(_firstnameMeta);
    }
    if (data.containsKey('lastname')) {
      context.handle(_lastnameMeta,
          lastname.isAcceptableOrUnknown(data['lastname']!, _lastnameMeta));
    } else if (isInserting) {
      context.missing(_lastnameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    } else if (isInserting) {
      context.missing(_birthDateMeta);
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
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      firstname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firstname'])!,
      lastname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lastname'])!,
      avatarUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number'])!,
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date'])!,
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
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final DateTime birthDate;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final bool isCurrent;
  const User(
      {required this.id,
      required this.email,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.avatarUrl,
      required this.phoneNumber,
      required this.birthDate,
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
    map['username'] = Variable<String>(username);
    map['firstname'] = Variable<String>(firstname);
    map['lastname'] = Variable<String>(lastname);
    map['avatar_url'] = Variable<String>(avatarUrl);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['birth_date'] = Variable<DateTime>(birthDate);
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
      username: Value(username),
      firstname: Value(firstname),
      lastname: Value(lastname),
      avatarUrl: Value(avatarUrl),
      phoneNumber: Value(phoneNumber),
      birthDate: Value(birthDate),
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
      username: serializer.fromJson<String>(json['username']),
      firstname: serializer.fromJson<String>(json['firstname']),
      lastname: serializer.fromJson<String>(json['lastname']),
      avatarUrl: serializer.fromJson<String>(json['avatarUrl']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      birthDate: serializer.fromJson<DateTime>(json['birthDate']),
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
      'username': serializer.toJson<String>(username),
      'firstname': serializer.toJson<String>(firstname),
      'lastname': serializer.toJson<String>(lastname),
      'avatarUrl': serializer.toJson<String>(avatarUrl),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'birthDate': serializer.toJson<DateTime>(birthDate),
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
          String? username,
          String? firstname,
          String? lastname,
          String? avatarUrl,
          String? phoneNumber,
          DateTime? birthDate,
          String? accessToken,
          String? refreshToken,
          bool? isEducationCompleted,
          String? provider,
          bool? isCurrent}) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        username: username ?? this.username,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        birthDate: birthDate ?? this.birthDate,
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
          ..write('username: $username, ')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('birthDate: $birthDate, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('provider: $provider, ')
          ..write('isCurrent: $isCurrent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      email,
      username,
      firstname,
      lastname,
      avatarUrl,
      phoneNumber,
      birthDate,
      accessToken,
      refreshToken,
      isEducationCompleted,
      provider,
      isCurrent);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.email == this.email &&
          other.username == this.username &&
          other.firstname == this.firstname &&
          other.lastname == this.lastname &&
          other.avatarUrl == this.avatarUrl &&
          other.phoneNumber == this.phoneNumber &&
          other.birthDate == this.birthDate &&
          other.accessToken == this.accessToken &&
          other.refreshToken == this.refreshToken &&
          other.isEducationCompleted == this.isEducationCompleted &&
          other.provider == this.provider &&
          other.isCurrent == this.isCurrent);
}

class UserAuthCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> username;
  final Value<String> firstname;
  final Value<String> lastname;
  final Value<String> avatarUrl;
  final Value<String> phoneNumber;
  final Value<DateTime> birthDate;
  final Value<String> accessToken;
  final Value<String> refreshToken;
  final Value<bool> isEducationCompleted;
  final Value<String> provider;
  final Value<bool> isCurrent;
  const UserAuthCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.username = const Value.absent(),
    this.firstname = const Value.absent(),
    this.lastname = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.isEducationCompleted = const Value.absent(),
    this.provider = const Value.absent(),
    this.isCurrent = const Value.absent(),
  });
  UserAuthCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String username,
    required String firstname,
    required String lastname,
    required String avatarUrl,
    required String phoneNumber,
    required DateTime birthDate,
    required String accessToken,
    required String refreshToken,
    required bool isEducationCompleted,
    required String provider,
    required bool isCurrent,
  })  : email = Value(email),
        username = Value(username),
        firstname = Value(firstname),
        lastname = Value(lastname),
        avatarUrl = Value(avatarUrl),
        phoneNumber = Value(phoneNumber),
        birthDate = Value(birthDate),
        accessToken = Value(accessToken),
        refreshToken = Value(refreshToken),
        isEducationCompleted = Value(isEducationCompleted),
        provider = Value(provider),
        isCurrent = Value(isCurrent);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? username,
    Expression<String>? firstname,
    Expression<String>? lastname,
    Expression<String>? avatarUrl,
    Expression<String>? phoneNumber,
    Expression<DateTime>? birthDate,
    Expression<String>? accessToken,
    Expression<String>? refreshToken,
    Expression<bool>? isEducationCompleted,
    Expression<String>? provider,
    Expression<bool>? isCurrent,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (username != null) 'username': username,
      if (firstname != null) 'firstname': firstname,
      if (lastname != null) 'lastname': lastname,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (birthDate != null) 'birth_date': birthDate,
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
      Value<String>? username,
      Value<String>? firstname,
      Value<String>? lastname,
      Value<String>? avatarUrl,
      Value<String>? phoneNumber,
      Value<DateTime>? birthDate,
      Value<String>? accessToken,
      Value<String>? refreshToken,
      Value<bool>? isEducationCompleted,
      Value<String>? provider,
      Value<bool>? isCurrent}) {
    return UserAuthCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthDate: birthDate ?? this.birthDate,
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
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (firstname.present) {
      map['firstname'] = Variable<String>(firstname.value);
    }
    if (lastname.present) {
      map['lastname'] = Variable<String>(lastname.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
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
          ..write('username: $username, ')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('birthDate: $birthDate, ')
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
  required String username,
  required String firstname,
  required String lastname,
  required String avatarUrl,
  required String phoneNumber,
  required DateTime birthDate,
  required String accessToken,
  required String refreshToken,
  required bool isEducationCompleted,
  required String provider,
  required bool isCurrent,
});
typedef $$UserAuthTableUpdateCompanionBuilder = UserAuthCompanion Function({
  Value<int> id,
  Value<String> email,
  Value<String> username,
  Value<String> firstname,
  Value<String> lastname,
  Value<String> avatarUrl,
  Value<String> phoneNumber,
  Value<DateTime> birthDate,
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
            Value<String> username = const Value.absent(),
            Value<String> firstname = const Value.absent(),
            Value<String> lastname = const Value.absent(),
            Value<String> avatarUrl = const Value.absent(),
            Value<String> phoneNumber = const Value.absent(),
            Value<DateTime> birthDate = const Value.absent(),
            Value<String> accessToken = const Value.absent(),
            Value<String> refreshToken = const Value.absent(),
            Value<bool> isEducationCompleted = const Value.absent(),
            Value<String> provider = const Value.absent(),
            Value<bool> isCurrent = const Value.absent(),
          }) =>
              UserAuthCompanion(
            id: id,
            email: email,
            username: username,
            firstname: firstname,
            lastname: lastname,
            avatarUrl: avatarUrl,
            phoneNumber: phoneNumber,
            birthDate: birthDate,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            provider: provider,
            isCurrent: isCurrent,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String email,
            required String username,
            required String firstname,
            required String lastname,
            required String avatarUrl,
            required String phoneNumber,
            required DateTime birthDate,
            required String accessToken,
            required String refreshToken,
            required bool isEducationCompleted,
            required String provider,
            required bool isCurrent,
          }) =>
              UserAuthCompanion.insert(
            id: id,
            email: email,
            username: username,
            firstname: firstname,
            lastname: lastname,
            avatarUrl: avatarUrl,
            phoneNumber: phoneNumber,
            birthDate: birthDate,
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

  ColumnFilters<String> get username => $state.composableBuilder(
      column: $state.table.username,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get firstname => $state.composableBuilder(
      column: $state.table.firstname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lastname => $state.composableBuilder(
      column: $state.table.lastname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get avatarUrl => $state.composableBuilder(
      column: $state.table.avatarUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phoneNumber => $state.composableBuilder(
      column: $state.table.phoneNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get birthDate => $state.composableBuilder(
      column: $state.table.birthDate,
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

  ColumnOrderings<String> get username => $state.composableBuilder(
      column: $state.table.username,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get firstname => $state.composableBuilder(
      column: $state.table.firstname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lastname => $state.composableBuilder(
      column: $state.table.lastname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get avatarUrl => $state.composableBuilder(
      column: $state.table.avatarUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phoneNumber => $state.composableBuilder(
      column: $state.table.phoneNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get birthDate => $state.composableBuilder(
      column: $state.table.birthDate,
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
