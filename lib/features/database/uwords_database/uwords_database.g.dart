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
  static const VerificationMeta _subscriptionTypeMeta =
      const VerificationMeta('subscriptionType');
  @override
  late final GeneratedColumn<int> subscriptionType = GeneratedColumn<int>(
      'subscription_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _subscriptionAcquisitionMeta =
      const VerificationMeta('subscriptionAcquisition');
  @override
  late final GeneratedColumn<DateTime> subscriptionAcquisition =
      GeneratedColumn<DateTime>('subscription_acquisition', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _subscriptionExpiredMeta =
      const VerificationMeta('subscriptionExpired');
  @override
  late final GeneratedColumn<DateTime> subscriptionExpired =
      GeneratedColumn<DateTime>('subscription_expired', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _allowedAudioSecondsMeta =
      const VerificationMeta('allowedAudioSeconds');
  @override
  late final GeneratedColumn<int> allowedAudioSeconds = GeneratedColumn<int>(
      'allowed_audio_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _allowedVideoSecondsMeta =
      const VerificationMeta('allowedVideoSeconds');
  @override
  late final GeneratedColumn<int> allowedVideoSeconds = GeneratedColumn<int>(
      'allowed_video_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _energyMeta = const VerificationMeta('energy');
  @override
  late final GeneratedColumn<int> energy = GeneratedColumn<int>(
      'energy', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  static const VerificationMeta _isFeedbackCompleteMeta =
      const VerificationMeta('isFeedbackComplete');
  @override
  late final GeneratedColumn<bool> isFeedbackComplete = GeneratedColumn<bool>(
      'is_feedback_complete', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_feedback_complete" IN (0, 1))'));
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
        subscriptionType,
        subscriptionAcquisition,
        subscriptionExpired,
        allowedAudioSeconds,
        allowedVideoSeconds,
        energy,
        accessToken,
        refreshToken,
        isEducationCompleted,
        provider,
        isCurrent,
        isFeedbackComplete
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
    if (data.containsKey('subscription_type')) {
      context.handle(
          _subscriptionTypeMeta,
          subscriptionType.isAcceptableOrUnknown(
              data['subscription_type']!, _subscriptionTypeMeta));
    }
    if (data.containsKey('subscription_acquisition')) {
      context.handle(
          _subscriptionAcquisitionMeta,
          subscriptionAcquisition.isAcceptableOrUnknown(
              data['subscription_acquisition']!, _subscriptionAcquisitionMeta));
    }
    if (data.containsKey('subscription_expired')) {
      context.handle(
          _subscriptionExpiredMeta,
          subscriptionExpired.isAcceptableOrUnknown(
              data['subscription_expired']!, _subscriptionExpiredMeta));
    }
    if (data.containsKey('allowed_audio_seconds')) {
      context.handle(
          _allowedAudioSecondsMeta,
          allowedAudioSeconds.isAcceptableOrUnknown(
              data['allowed_audio_seconds']!, _allowedAudioSecondsMeta));
    } else if (isInserting) {
      context.missing(_allowedAudioSecondsMeta);
    }
    if (data.containsKey('allowed_video_seconds')) {
      context.handle(
          _allowedVideoSecondsMeta,
          allowedVideoSeconds.isAcceptableOrUnknown(
              data['allowed_video_seconds']!, _allowedVideoSecondsMeta));
    } else if (isInserting) {
      context.missing(_allowedVideoSecondsMeta);
    }
    if (data.containsKey('energy')) {
      context.handle(_energyMeta,
          energy.isAcceptableOrUnknown(data['energy']!, _energyMeta));
    } else if (isInserting) {
      context.missing(_energyMeta);
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
    if (data.containsKey('is_feedback_complete')) {
      context.handle(
          _isFeedbackCompleteMeta,
          isFeedbackComplete.isAcceptableOrUnknown(
              data['is_feedback_complete']!, _isFeedbackCompleteMeta));
    } else if (isInserting) {
      context.missing(_isFeedbackCompleteMeta);
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
      subscriptionType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subscription_type']),
      subscriptionAcquisition: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}subscription_acquisition']),
      subscriptionExpired: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}subscription_expired']),
      allowedAudioSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}allowed_audio_seconds'])!,
      allowedVideoSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}allowed_video_seconds'])!,
      energy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}energy'])!,
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
      isFeedbackComplete: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_feedback_complete'])!,
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
  final int? subscriptionType;
  final DateTime? subscriptionAcquisition;
  final DateTime? subscriptionExpired;
  final int allowedAudioSeconds;
  final int allowedVideoSeconds;
  final int energy;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final bool isCurrent;
  final bool isFeedbackComplete;
  const User(
      {required this.id,
      required this.email,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.avatarUrl,
      required this.phoneNumber,
      required this.birthDate,
      this.subscriptionType,
      this.subscriptionAcquisition,
      this.subscriptionExpired,
      required this.allowedAudioSeconds,
      required this.allowedVideoSeconds,
      required this.energy,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required this.provider,
      required this.isCurrent,
      required this.isFeedbackComplete});
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
    if (!nullToAbsent || subscriptionType != null) {
      map['subscription_type'] = Variable<int>(subscriptionType);
    }
    if (!nullToAbsent || subscriptionAcquisition != null) {
      map['subscription_acquisition'] =
          Variable<DateTime>(subscriptionAcquisition);
    }
    if (!nullToAbsent || subscriptionExpired != null) {
      map['subscription_expired'] = Variable<DateTime>(subscriptionExpired);
    }
    map['allowed_audio_seconds'] = Variable<int>(allowedAudioSeconds);
    map['allowed_video_seconds'] = Variable<int>(allowedVideoSeconds);
    map['energy'] = Variable<int>(energy);
    map['access_token'] = Variable<String>(accessToken);
    map['refresh_token'] = Variable<String>(refreshToken);
    map['is_education_completed'] = Variable<bool>(isEducationCompleted);
    map['provider'] = Variable<String>(provider);
    map['is_current'] = Variable<bool>(isCurrent);
    map['is_feedback_complete'] = Variable<bool>(isFeedbackComplete);
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
      subscriptionType: subscriptionType == null && nullToAbsent
          ? const Value.absent()
          : Value(subscriptionType),
      subscriptionAcquisition: subscriptionAcquisition == null && nullToAbsent
          ? const Value.absent()
          : Value(subscriptionAcquisition),
      subscriptionExpired: subscriptionExpired == null && nullToAbsent
          ? const Value.absent()
          : Value(subscriptionExpired),
      allowedAudioSeconds: Value(allowedAudioSeconds),
      allowedVideoSeconds: Value(allowedVideoSeconds),
      energy: Value(energy),
      accessToken: Value(accessToken),
      refreshToken: Value(refreshToken),
      isEducationCompleted: Value(isEducationCompleted),
      provider: Value(provider),
      isCurrent: Value(isCurrent),
      isFeedbackComplete: Value(isFeedbackComplete),
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
      subscriptionType: serializer.fromJson<int?>(json['subscriptionType']),
      subscriptionAcquisition:
          serializer.fromJson<DateTime?>(json['subscriptionAcquisition']),
      subscriptionExpired:
          serializer.fromJson<DateTime?>(json['subscriptionExpired']),
      allowedAudioSeconds:
          serializer.fromJson<int>(json['allowedAudioSeconds']),
      allowedVideoSeconds:
          serializer.fromJson<int>(json['allowedVideoSeconds']),
      energy: serializer.fromJson<int>(json['energy']),
      accessToken: serializer.fromJson<String>(json['accessToken']),
      refreshToken: serializer.fromJson<String>(json['refreshToken']),
      isEducationCompleted:
          serializer.fromJson<bool>(json['isEducationCompleted']),
      provider: serializer.fromJson<String>(json['provider']),
      isCurrent: serializer.fromJson<bool>(json['isCurrent']),
      isFeedbackComplete: serializer.fromJson<bool>(json['isFeedbackComplete']),
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
      'subscriptionType': serializer.toJson<int?>(subscriptionType),
      'subscriptionAcquisition':
          serializer.toJson<DateTime?>(subscriptionAcquisition),
      'subscriptionExpired': serializer.toJson<DateTime?>(subscriptionExpired),
      'allowedAudioSeconds': serializer.toJson<int>(allowedAudioSeconds),
      'allowedVideoSeconds': serializer.toJson<int>(allowedVideoSeconds),
      'energy': serializer.toJson<int>(energy),
      'accessToken': serializer.toJson<String>(accessToken),
      'refreshToken': serializer.toJson<String>(refreshToken),
      'isEducationCompleted': serializer.toJson<bool>(isEducationCompleted),
      'provider': serializer.toJson<String>(provider),
      'isCurrent': serializer.toJson<bool>(isCurrent),
      'isFeedbackComplete': serializer.toJson<bool>(isFeedbackComplete),
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
          Value<int?> subscriptionType = const Value.absent(),
          Value<DateTime?> subscriptionAcquisition = const Value.absent(),
          Value<DateTime?> subscriptionExpired = const Value.absent(),
          int? allowedAudioSeconds,
          int? allowedVideoSeconds,
          int? energy,
          String? accessToken,
          String? refreshToken,
          bool? isEducationCompleted,
          String? provider,
          bool? isCurrent,
          bool? isFeedbackComplete}) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        username: username ?? this.username,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        birthDate: birthDate ?? this.birthDate,
        subscriptionType: subscriptionType.present
            ? subscriptionType.value
            : this.subscriptionType,
        subscriptionAcquisition: subscriptionAcquisition.present
            ? subscriptionAcquisition.value
            : this.subscriptionAcquisition,
        subscriptionExpired: subscriptionExpired.present
            ? subscriptionExpired.value
            : this.subscriptionExpired,
        allowedAudioSeconds: allowedAudioSeconds ?? this.allowedAudioSeconds,
        allowedVideoSeconds: allowedVideoSeconds ?? this.allowedVideoSeconds,
        energy: energy ?? this.energy,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
        provider: provider ?? this.provider,
        isCurrent: isCurrent ?? this.isCurrent,
        isFeedbackComplete: isFeedbackComplete ?? this.isFeedbackComplete,
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
          ..write('subscriptionType: $subscriptionType, ')
          ..write('subscriptionAcquisition: $subscriptionAcquisition, ')
          ..write('subscriptionExpired: $subscriptionExpired, ')
          ..write('allowedAudioSeconds: $allowedAudioSeconds, ')
          ..write('allowedVideoSeconds: $allowedVideoSeconds, ')
          ..write('energy: $energy, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('provider: $provider, ')
          ..write('isCurrent: $isCurrent, ')
          ..write('isFeedbackComplete: $isFeedbackComplete')
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
      subscriptionType,
      subscriptionAcquisition,
      subscriptionExpired,
      allowedAudioSeconds,
      allowedVideoSeconds,
      energy,
      accessToken,
      refreshToken,
      isEducationCompleted,
      provider,
      isCurrent,
      isFeedbackComplete);
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
          other.subscriptionType == this.subscriptionType &&
          other.subscriptionAcquisition == this.subscriptionAcquisition &&
          other.subscriptionExpired == this.subscriptionExpired &&
          other.allowedAudioSeconds == this.allowedAudioSeconds &&
          other.allowedVideoSeconds == this.allowedVideoSeconds &&
          other.energy == this.energy &&
          other.accessToken == this.accessToken &&
          other.refreshToken == this.refreshToken &&
          other.isEducationCompleted == this.isEducationCompleted &&
          other.provider == this.provider &&
          other.isCurrent == this.isCurrent &&
          other.isFeedbackComplete == this.isFeedbackComplete);
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
  final Value<int?> subscriptionType;
  final Value<DateTime?> subscriptionAcquisition;
  final Value<DateTime?> subscriptionExpired;
  final Value<int> allowedAudioSeconds;
  final Value<int> allowedVideoSeconds;
  final Value<int> energy;
  final Value<String> accessToken;
  final Value<String> refreshToken;
  final Value<bool> isEducationCompleted;
  final Value<String> provider;
  final Value<bool> isCurrent;
  final Value<bool> isFeedbackComplete;
  const UserAuthCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.username = const Value.absent(),
    this.firstname = const Value.absent(),
    this.lastname = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.subscriptionType = const Value.absent(),
    this.subscriptionAcquisition = const Value.absent(),
    this.subscriptionExpired = const Value.absent(),
    this.allowedAudioSeconds = const Value.absent(),
    this.allowedVideoSeconds = const Value.absent(),
    this.energy = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.isEducationCompleted = const Value.absent(),
    this.provider = const Value.absent(),
    this.isCurrent = const Value.absent(),
    this.isFeedbackComplete = const Value.absent(),
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
    this.subscriptionType = const Value.absent(),
    this.subscriptionAcquisition = const Value.absent(),
    this.subscriptionExpired = const Value.absent(),
    required int allowedAudioSeconds,
    required int allowedVideoSeconds,
    required int energy,
    required String accessToken,
    required String refreshToken,
    required bool isEducationCompleted,
    required String provider,
    required bool isCurrent,
    required bool isFeedbackComplete,
  })  : email = Value(email),
        username = Value(username),
        firstname = Value(firstname),
        lastname = Value(lastname),
        avatarUrl = Value(avatarUrl),
        phoneNumber = Value(phoneNumber),
        birthDate = Value(birthDate),
        allowedAudioSeconds = Value(allowedAudioSeconds),
        allowedVideoSeconds = Value(allowedVideoSeconds),
        energy = Value(energy),
        accessToken = Value(accessToken),
        refreshToken = Value(refreshToken),
        isEducationCompleted = Value(isEducationCompleted),
        provider = Value(provider),
        isCurrent = Value(isCurrent),
        isFeedbackComplete = Value(isFeedbackComplete);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? username,
    Expression<String>? firstname,
    Expression<String>? lastname,
    Expression<String>? avatarUrl,
    Expression<String>? phoneNumber,
    Expression<DateTime>? birthDate,
    Expression<int>? subscriptionType,
    Expression<DateTime>? subscriptionAcquisition,
    Expression<DateTime>? subscriptionExpired,
    Expression<int>? allowedAudioSeconds,
    Expression<int>? allowedVideoSeconds,
    Expression<int>? energy,
    Expression<String>? accessToken,
    Expression<String>? refreshToken,
    Expression<bool>? isEducationCompleted,
    Expression<String>? provider,
    Expression<bool>? isCurrent,
    Expression<bool>? isFeedbackComplete,
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
      if (subscriptionType != null) 'subscription_type': subscriptionType,
      if (subscriptionAcquisition != null)
        'subscription_acquisition': subscriptionAcquisition,
      if (subscriptionExpired != null)
        'subscription_expired': subscriptionExpired,
      if (allowedAudioSeconds != null)
        'allowed_audio_seconds': allowedAudioSeconds,
      if (allowedVideoSeconds != null)
        'allowed_video_seconds': allowedVideoSeconds,
      if (energy != null) 'energy': energy,
      if (accessToken != null) 'access_token': accessToken,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (isEducationCompleted != null)
        'is_education_completed': isEducationCompleted,
      if (provider != null) 'provider': provider,
      if (isCurrent != null) 'is_current': isCurrent,
      if (isFeedbackComplete != null)
        'is_feedback_complete': isFeedbackComplete,
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
      Value<int?>? subscriptionType,
      Value<DateTime?>? subscriptionAcquisition,
      Value<DateTime?>? subscriptionExpired,
      Value<int>? allowedAudioSeconds,
      Value<int>? allowedVideoSeconds,
      Value<int>? energy,
      Value<String>? accessToken,
      Value<String>? refreshToken,
      Value<bool>? isEducationCompleted,
      Value<String>? provider,
      Value<bool>? isCurrent,
      Value<bool>? isFeedbackComplete}) {
    return UserAuthCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthDate: birthDate ?? this.birthDate,
      subscriptionType: subscriptionType ?? this.subscriptionType,
      subscriptionAcquisition:
          subscriptionAcquisition ?? this.subscriptionAcquisition,
      subscriptionExpired: subscriptionExpired ?? this.subscriptionExpired,
      allowedAudioSeconds: allowedAudioSeconds ?? this.allowedAudioSeconds,
      allowedVideoSeconds: allowedVideoSeconds ?? this.allowedVideoSeconds,
      energy: energy ?? this.energy,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
      provider: provider ?? this.provider,
      isCurrent: isCurrent ?? this.isCurrent,
      isFeedbackComplete: isFeedbackComplete ?? this.isFeedbackComplete,
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
    if (subscriptionType.present) {
      map['subscription_type'] = Variable<int>(subscriptionType.value);
    }
    if (subscriptionAcquisition.present) {
      map['subscription_acquisition'] =
          Variable<DateTime>(subscriptionAcquisition.value);
    }
    if (subscriptionExpired.present) {
      map['subscription_expired'] =
          Variable<DateTime>(subscriptionExpired.value);
    }
    if (allowedAudioSeconds.present) {
      map['allowed_audio_seconds'] = Variable<int>(allowedAudioSeconds.value);
    }
    if (allowedVideoSeconds.present) {
      map['allowed_video_seconds'] = Variable<int>(allowedVideoSeconds.value);
    }
    if (energy.present) {
      map['energy'] = Variable<int>(energy.value);
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
    if (isFeedbackComplete.present) {
      map['is_feedback_complete'] = Variable<bool>(isFeedbackComplete.value);
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
          ..write('subscriptionType: $subscriptionType, ')
          ..write('subscriptionAcquisition: $subscriptionAcquisition, ')
          ..write('subscriptionExpired: $subscriptionExpired, ')
          ..write('allowedAudioSeconds: $allowedAudioSeconds, ')
          ..write('allowedVideoSeconds: $allowedVideoSeconds, ')
          ..write('energy: $energy, ')
          ..write('accessToken: $accessToken, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('isEducationCompleted: $isEducationCompleted, ')
          ..write('provider: $provider, ')
          ..write('isCurrent: $isCurrent, ')
          ..write('isFeedbackComplete: $isFeedbackComplete')
          ..write(')'))
        .toString();
  }
}

class $MetricDBTable extends MetricDB with TableInfo<$MetricDBTable, Metric> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MetricDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_auth (id)'));
  static const VerificationMeta _daysMeta = const VerificationMeta('days');
  @override
  late final GeneratedColumn<int> days = GeneratedColumn<int>(
      'days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alltimeUserwordsAmountMeta =
      const VerificationMeta('alltimeUserwordsAmount');
  @override
  late final GeneratedColumn<int> alltimeUserwordsAmount = GeneratedColumn<int>(
      'alltime_userwords_amount', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alltimeLearnedAmountMeta =
      const VerificationMeta('alltimeLearnedAmount');
  @override
  late final GeneratedColumn<int> alltimeLearnedAmount = GeneratedColumn<int>(
      'alltime_learned_amount', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alltimeLearnedPercentsMeta =
      const VerificationMeta('alltimeLearnedPercents');
  @override
  late final GeneratedColumn<double> alltimeLearnedPercents =
      GeneratedColumn<double>('alltime_learned_percents', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _alltimeSpeechSecondsMeta =
      const VerificationMeta('alltimeSpeechSeconds');
  @override
  late final GeneratedColumn<int> alltimeSpeechSeconds = GeneratedColumn<int>(
      'alltime_speech_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _alltimeVideoSecondsMeta =
      const VerificationMeta('alltimeVideoSeconds');
  @override
  late final GeneratedColumn<int> alltimeVideoSeconds = GeneratedColumn<int>(
      'alltime_video_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        days,
        alltimeUserwordsAmount,
        alltimeLearnedAmount,
        alltimeLearnedPercents,
        alltimeSpeechSeconds,
        alltimeVideoSeconds
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'metric_d_b';
  @override
  VerificationContext validateIntegrity(Insertable<Metric> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('days')) {
      context.handle(
          _daysMeta, days.isAcceptableOrUnknown(data['days']!, _daysMeta));
    } else if (isInserting) {
      context.missing(_daysMeta);
    }
    if (data.containsKey('alltime_userwords_amount')) {
      context.handle(
          _alltimeUserwordsAmountMeta,
          alltimeUserwordsAmount.isAcceptableOrUnknown(
              data['alltime_userwords_amount']!, _alltimeUserwordsAmountMeta));
    } else if (isInserting) {
      context.missing(_alltimeUserwordsAmountMeta);
    }
    if (data.containsKey('alltime_learned_amount')) {
      context.handle(
          _alltimeLearnedAmountMeta,
          alltimeLearnedAmount.isAcceptableOrUnknown(
              data['alltime_learned_amount']!, _alltimeLearnedAmountMeta));
    } else if (isInserting) {
      context.missing(_alltimeLearnedAmountMeta);
    }
    if (data.containsKey('alltime_learned_percents')) {
      context.handle(
          _alltimeLearnedPercentsMeta,
          alltimeLearnedPercents.isAcceptableOrUnknown(
              data['alltime_learned_percents']!, _alltimeLearnedPercentsMeta));
    } else if (isInserting) {
      context.missing(_alltimeLearnedPercentsMeta);
    }
    if (data.containsKey('alltime_speech_seconds')) {
      context.handle(
          _alltimeSpeechSecondsMeta,
          alltimeSpeechSeconds.isAcceptableOrUnknown(
              data['alltime_speech_seconds']!, _alltimeSpeechSecondsMeta));
    } else if (isInserting) {
      context.missing(_alltimeSpeechSecondsMeta);
    }
    if (data.containsKey('alltime_video_seconds')) {
      context.handle(
          _alltimeVideoSecondsMeta,
          alltimeVideoSeconds.isAcceptableOrUnknown(
              data['alltime_video_seconds']!, _alltimeVideoSecondsMeta));
    } else if (isInserting) {
      context.missing(_alltimeVideoSecondsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Metric map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Metric(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      days: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}days'])!,
      alltimeUserwordsAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}alltime_userwords_amount'])!,
      alltimeLearnedAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}alltime_learned_amount'])!,
      alltimeLearnedPercents: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}alltime_learned_percents'])!,
      alltimeSpeechSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}alltime_speech_seconds'])!,
      alltimeVideoSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}alltime_video_seconds'])!,
    );
  }

  @override
  $MetricDBTable createAlias(String alias) {
    return $MetricDBTable(attachedDatabase, alias);
  }
}

class Metric extends DataClass implements Insertable<Metric> {
  final int id;
  final int userId;
  final int days;
  final int alltimeUserwordsAmount;
  final int alltimeLearnedAmount;
  final double alltimeLearnedPercents;
  final int alltimeSpeechSeconds;
  final int alltimeVideoSeconds;
  const Metric(
      {required this.id,
      required this.userId,
      required this.days,
      required this.alltimeUserwordsAmount,
      required this.alltimeLearnedAmount,
      required this.alltimeLearnedPercents,
      required this.alltimeSpeechSeconds,
      required this.alltimeVideoSeconds});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['days'] = Variable<int>(days);
    map['alltime_userwords_amount'] = Variable<int>(alltimeUserwordsAmount);
    map['alltime_learned_amount'] = Variable<int>(alltimeLearnedAmount);
    map['alltime_learned_percents'] = Variable<double>(alltimeLearnedPercents);
    map['alltime_speech_seconds'] = Variable<int>(alltimeSpeechSeconds);
    map['alltime_video_seconds'] = Variable<int>(alltimeVideoSeconds);
    return map;
  }

  MetricDBCompanion toCompanion(bool nullToAbsent) {
    return MetricDBCompanion(
      id: Value(id),
      userId: Value(userId),
      days: Value(days),
      alltimeUserwordsAmount: Value(alltimeUserwordsAmount),
      alltimeLearnedAmount: Value(alltimeLearnedAmount),
      alltimeLearnedPercents: Value(alltimeLearnedPercents),
      alltimeSpeechSeconds: Value(alltimeSpeechSeconds),
      alltimeVideoSeconds: Value(alltimeVideoSeconds),
    );
  }

  factory Metric.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Metric(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      days: serializer.fromJson<int>(json['days']),
      alltimeUserwordsAmount:
          serializer.fromJson<int>(json['alltimeUserwordsAmount']),
      alltimeLearnedAmount:
          serializer.fromJson<int>(json['alltimeLearnedAmount']),
      alltimeLearnedPercents:
          serializer.fromJson<double>(json['alltimeLearnedPercents']),
      alltimeSpeechSeconds:
          serializer.fromJson<int>(json['alltimeSpeechSeconds']),
      alltimeVideoSeconds:
          serializer.fromJson<int>(json['alltimeVideoSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'days': serializer.toJson<int>(days),
      'alltimeUserwordsAmount': serializer.toJson<int>(alltimeUserwordsAmount),
      'alltimeLearnedAmount': serializer.toJson<int>(alltimeLearnedAmount),
      'alltimeLearnedPercents':
          serializer.toJson<double>(alltimeLearnedPercents),
      'alltimeSpeechSeconds': serializer.toJson<int>(alltimeSpeechSeconds),
      'alltimeVideoSeconds': serializer.toJson<int>(alltimeVideoSeconds),
    };
  }

  Metric copyWith(
          {int? id,
          int? userId,
          int? days,
          int? alltimeUserwordsAmount,
          int? alltimeLearnedAmount,
          double? alltimeLearnedPercents,
          int? alltimeSpeechSeconds,
          int? alltimeVideoSeconds}) =>
      Metric(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        days: days ?? this.days,
        alltimeUserwordsAmount:
            alltimeUserwordsAmount ?? this.alltimeUserwordsAmount,
        alltimeLearnedAmount: alltimeLearnedAmount ?? this.alltimeLearnedAmount,
        alltimeLearnedPercents:
            alltimeLearnedPercents ?? this.alltimeLearnedPercents,
        alltimeSpeechSeconds: alltimeSpeechSeconds ?? this.alltimeSpeechSeconds,
        alltimeVideoSeconds: alltimeVideoSeconds ?? this.alltimeVideoSeconds,
      );
  @override
  String toString() {
    return (StringBuffer('Metric(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('days: $days, ')
          ..write('alltimeUserwordsAmount: $alltimeUserwordsAmount, ')
          ..write('alltimeLearnedAmount: $alltimeLearnedAmount, ')
          ..write('alltimeLearnedPercents: $alltimeLearnedPercents, ')
          ..write('alltimeSpeechSeconds: $alltimeSpeechSeconds, ')
          ..write('alltimeVideoSeconds: $alltimeVideoSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      days,
      alltimeUserwordsAmount,
      alltimeLearnedAmount,
      alltimeLearnedPercents,
      alltimeSpeechSeconds,
      alltimeVideoSeconds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Metric &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.days == this.days &&
          other.alltimeUserwordsAmount == this.alltimeUserwordsAmount &&
          other.alltimeLearnedAmount == this.alltimeLearnedAmount &&
          other.alltimeLearnedPercents == this.alltimeLearnedPercents &&
          other.alltimeSpeechSeconds == this.alltimeSpeechSeconds &&
          other.alltimeVideoSeconds == this.alltimeVideoSeconds);
}

class MetricDBCompanion extends UpdateCompanion<Metric> {
  final Value<int> id;
  final Value<int> userId;
  final Value<int> days;
  final Value<int> alltimeUserwordsAmount;
  final Value<int> alltimeLearnedAmount;
  final Value<double> alltimeLearnedPercents;
  final Value<int> alltimeSpeechSeconds;
  final Value<int> alltimeVideoSeconds;
  const MetricDBCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.days = const Value.absent(),
    this.alltimeUserwordsAmount = const Value.absent(),
    this.alltimeLearnedAmount = const Value.absent(),
    this.alltimeLearnedPercents = const Value.absent(),
    this.alltimeSpeechSeconds = const Value.absent(),
    this.alltimeVideoSeconds = const Value.absent(),
  });
  MetricDBCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required int days,
    required int alltimeUserwordsAmount,
    required int alltimeLearnedAmount,
    required double alltimeLearnedPercents,
    required int alltimeSpeechSeconds,
    required int alltimeVideoSeconds,
  })  : userId = Value(userId),
        days = Value(days),
        alltimeUserwordsAmount = Value(alltimeUserwordsAmount),
        alltimeLearnedAmount = Value(alltimeLearnedAmount),
        alltimeLearnedPercents = Value(alltimeLearnedPercents),
        alltimeSpeechSeconds = Value(alltimeSpeechSeconds),
        alltimeVideoSeconds = Value(alltimeVideoSeconds);
  static Insertable<Metric> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<int>? days,
    Expression<int>? alltimeUserwordsAmount,
    Expression<int>? alltimeLearnedAmount,
    Expression<double>? alltimeLearnedPercents,
    Expression<int>? alltimeSpeechSeconds,
    Expression<int>? alltimeVideoSeconds,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (days != null) 'days': days,
      if (alltimeUserwordsAmount != null)
        'alltime_userwords_amount': alltimeUserwordsAmount,
      if (alltimeLearnedAmount != null)
        'alltime_learned_amount': alltimeLearnedAmount,
      if (alltimeLearnedPercents != null)
        'alltime_learned_percents': alltimeLearnedPercents,
      if (alltimeSpeechSeconds != null)
        'alltime_speech_seconds': alltimeSpeechSeconds,
      if (alltimeVideoSeconds != null)
        'alltime_video_seconds': alltimeVideoSeconds,
    });
  }

  MetricDBCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<int>? days,
      Value<int>? alltimeUserwordsAmount,
      Value<int>? alltimeLearnedAmount,
      Value<double>? alltimeLearnedPercents,
      Value<int>? alltimeSpeechSeconds,
      Value<int>? alltimeVideoSeconds}) {
    return MetricDBCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      days: days ?? this.days,
      alltimeUserwordsAmount:
          alltimeUserwordsAmount ?? this.alltimeUserwordsAmount,
      alltimeLearnedAmount: alltimeLearnedAmount ?? this.alltimeLearnedAmount,
      alltimeLearnedPercents:
          alltimeLearnedPercents ?? this.alltimeLearnedPercents,
      alltimeSpeechSeconds: alltimeSpeechSeconds ?? this.alltimeSpeechSeconds,
      alltimeVideoSeconds: alltimeVideoSeconds ?? this.alltimeVideoSeconds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (days.present) {
      map['days'] = Variable<int>(days.value);
    }
    if (alltimeUserwordsAmount.present) {
      map['alltime_userwords_amount'] =
          Variable<int>(alltimeUserwordsAmount.value);
    }
    if (alltimeLearnedAmount.present) {
      map['alltime_learned_amount'] = Variable<int>(alltimeLearnedAmount.value);
    }
    if (alltimeLearnedPercents.present) {
      map['alltime_learned_percents'] =
          Variable<double>(alltimeLearnedPercents.value);
    }
    if (alltimeSpeechSeconds.present) {
      map['alltime_speech_seconds'] = Variable<int>(alltimeSpeechSeconds.value);
    }
    if (alltimeVideoSeconds.present) {
      map['alltime_video_seconds'] = Variable<int>(alltimeVideoSeconds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MetricDBCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('days: $days, ')
          ..write('alltimeUserwordsAmount: $alltimeUserwordsAmount, ')
          ..write('alltimeLearnedAmount: $alltimeLearnedAmount, ')
          ..write('alltimeLearnedPercents: $alltimeLearnedPercents, ')
          ..write('alltimeSpeechSeconds: $alltimeSpeechSeconds, ')
          ..write('alltimeVideoSeconds: $alltimeVideoSeconds')
          ..write(')'))
        .toString();
  }
}

class $AchievementCategoryDBTable extends AchievementCategoryDB
    with TableInfo<$AchievementCategoryDBTable, AchievementCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementCategoryDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [title];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievement_category_d_b';
  @override
  VerificationContext validateIntegrity(
      Insertable<AchievementCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {title};
  @override
  AchievementCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AchievementCategory(
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
    );
  }

  @override
  $AchievementCategoryDBTable createAlias(String alias) {
    return $AchievementCategoryDBTable(attachedDatabase, alias);
  }
}

class AchievementCategory extends DataClass
    implements Insertable<AchievementCategory> {
  final String title;
  const AchievementCategory({required this.title});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['title'] = Variable<String>(title);
    return map;
  }

  AchievementCategoryDBCompanion toCompanion(bool nullToAbsent) {
    return AchievementCategoryDBCompanion(
      title: Value(title),
    );
  }

  factory AchievementCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AchievementCategory(
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'title': serializer.toJson<String>(title),
    };
  }

  AchievementCategory copyWith({String? title}) => AchievementCategory(
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('AchievementCategory(')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => title.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AchievementCategory && other.title == this.title);
}

class AchievementCategoryDBCompanion
    extends UpdateCompanion<AchievementCategory> {
  final Value<String> title;
  final Value<int> rowid;
  const AchievementCategoryDBCompanion({
    this.title = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AchievementCategoryDBCompanion.insert({
    required String title,
    this.rowid = const Value.absent(),
  }) : title = Value(title);
  static Insertable<AchievementCategory> custom({
    Expression<String>? title,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (title != null) 'title': title,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AchievementCategoryDBCompanion copyWith(
      {Value<String>? title, Value<int>? rowid}) {
    return AchievementCategoryDBCompanion(
      title: title ?? this.title,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementCategoryDBCompanion(')
          ..write('title: $title, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AchievementDBTable extends AchievementDB
    with TableInfo<$AchievementDBTable, Achievement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AchievementDBTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_auth (id)'));
  static const VerificationMeta _categoryTitleMeta =
      const VerificationMeta('categoryTitle');
  @override
  late final GeneratedColumn<String> categoryTitle = GeneratedColumn<String>(
      'category_title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES achievement_category_d_b (title)'));
  static const VerificationMeta _progressMeta =
      const VerificationMeta('progress');
  @override
  late final GeneratedColumn<int> progress = GeneratedColumn<int>(
      'progress', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _progressPercentMeta =
      const VerificationMeta('progressPercent');
  @override
  late final GeneratedColumn<double> progressPercent = GeneratedColumn<double>(
      'progress_percent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool> isCompleted = GeneratedColumn<bool>(
      'is_completed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_completed" IN (0, 1))'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pictureLinkMeta =
      const VerificationMeta('pictureLink');
  @override
  late final GeneratedColumn<String> pictureLink = GeneratedColumn<String>(
      'picture_link', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stageMeta = const VerificationMeta('stage');
  @override
  late final GeneratedColumn<int> stage = GeneratedColumn<int>(
      'stage', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<int> target = GeneratedColumn<int>(
      'target', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _achievementIdMeta =
      const VerificationMeta('achievementId');
  @override
  late final GeneratedColumn<int> achievementId = GeneratedColumn<int>(
      'achievement_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        categoryTitle,
        progress,
        progressPercent,
        isCompleted,
        title,
        description,
        pictureLink,
        category,
        stage,
        target,
        achievementId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'achievement_d_b';
  @override
  VerificationContext validateIntegrity(Insertable<Achievement> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('category_title')) {
      context.handle(
          _categoryTitleMeta,
          categoryTitle.isAcceptableOrUnknown(
              data['category_title']!, _categoryTitleMeta));
    } else if (isInserting) {
      context.missing(_categoryTitleMeta);
    }
    if (data.containsKey('progress')) {
      context.handle(_progressMeta,
          progress.isAcceptableOrUnknown(data['progress']!, _progressMeta));
    } else if (isInserting) {
      context.missing(_progressMeta);
    }
    if (data.containsKey('progress_percent')) {
      context.handle(
          _progressPercentMeta,
          progressPercent.isAcceptableOrUnknown(
              data['progress_percent']!, _progressPercentMeta));
    } else if (isInserting) {
      context.missing(_progressPercentMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    } else if (isInserting) {
      context.missing(_isCompletedMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('picture_link')) {
      context.handle(
          _pictureLinkMeta,
          pictureLink.isAcceptableOrUnknown(
              data['picture_link']!, _pictureLinkMeta));
    } else if (isInserting) {
      context.missing(_pictureLinkMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('stage')) {
      context.handle(
          _stageMeta, stage.isAcceptableOrUnknown(data['stage']!, _stageMeta));
    } else if (isInserting) {
      context.missing(_stageMeta);
    }
    if (data.containsKey('target')) {
      context.handle(_targetMeta,
          target.isAcceptableOrUnknown(data['target']!, _targetMeta));
    } else if (isInserting) {
      context.missing(_targetMeta);
    }
    if (data.containsKey('achievement_id')) {
      context.handle(
          _achievementIdMeta,
          achievementId.isAcceptableOrUnknown(
              data['achievement_id']!, _achievementIdMeta));
    } else if (isInserting) {
      context.missing(_achievementIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Achievement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Achievement(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      categoryTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_title'])!,
      progress: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}progress'])!,
      progressPercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}progress_percent'])!,
      isCompleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_completed'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      pictureLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}picture_link'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      stage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}stage'])!,
      target: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}target'])!,
      achievementId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}achievement_id'])!,
    );
  }

  @override
  $AchievementDBTable createAlias(String alias) {
    return $AchievementDBTable(attachedDatabase, alias);
  }
}

class Achievement extends DataClass implements Insertable<Achievement> {
  final int id;
  final int userId;
  final String categoryTitle;
  final int progress;
  final double progressPercent;
  final bool isCompleted;
  final String title;
  final String description;
  final String pictureLink;
  final String category;
  final int stage;
  final int target;
  final int achievementId;
  const Achievement(
      {required this.id,
      required this.userId,
      required this.categoryTitle,
      required this.progress,
      required this.progressPercent,
      required this.isCompleted,
      required this.title,
      required this.description,
      required this.pictureLink,
      required this.category,
      required this.stage,
      required this.target,
      required this.achievementId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['category_title'] = Variable<String>(categoryTitle);
    map['progress'] = Variable<int>(progress);
    map['progress_percent'] = Variable<double>(progressPercent);
    map['is_completed'] = Variable<bool>(isCompleted);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['picture_link'] = Variable<String>(pictureLink);
    map['category'] = Variable<String>(category);
    map['stage'] = Variable<int>(stage);
    map['target'] = Variable<int>(target);
    map['achievement_id'] = Variable<int>(achievementId);
    return map;
  }

  AchievementDBCompanion toCompanion(bool nullToAbsent) {
    return AchievementDBCompanion(
      id: Value(id),
      userId: Value(userId),
      categoryTitle: Value(categoryTitle),
      progress: Value(progress),
      progressPercent: Value(progressPercent),
      isCompleted: Value(isCompleted),
      title: Value(title),
      description: Value(description),
      pictureLink: Value(pictureLink),
      category: Value(category),
      stage: Value(stage),
      target: Value(target),
      achievementId: Value(achievementId),
    );
  }

  factory Achievement.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Achievement(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      categoryTitle: serializer.fromJson<String>(json['categoryTitle']),
      progress: serializer.fromJson<int>(json['progress']),
      progressPercent: serializer.fromJson<double>(json['progressPercent']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      pictureLink: serializer.fromJson<String>(json['pictureLink']),
      category: serializer.fromJson<String>(json['category']),
      stage: serializer.fromJson<int>(json['stage']),
      target: serializer.fromJson<int>(json['target']),
      achievementId: serializer.fromJson<int>(json['achievementId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'categoryTitle': serializer.toJson<String>(categoryTitle),
      'progress': serializer.toJson<int>(progress),
      'progressPercent': serializer.toJson<double>(progressPercent),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'pictureLink': serializer.toJson<String>(pictureLink),
      'category': serializer.toJson<String>(category),
      'stage': serializer.toJson<int>(stage),
      'target': serializer.toJson<int>(target),
      'achievementId': serializer.toJson<int>(achievementId),
    };
  }

  Achievement copyWith(
          {int? id,
          int? userId,
          String? categoryTitle,
          int? progress,
          double? progressPercent,
          bool? isCompleted,
          String? title,
          String? description,
          String? pictureLink,
          String? category,
          int? stage,
          int? target,
          int? achievementId}) =>
      Achievement(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        categoryTitle: categoryTitle ?? this.categoryTitle,
        progress: progress ?? this.progress,
        progressPercent: progressPercent ?? this.progressPercent,
        isCompleted: isCompleted ?? this.isCompleted,
        title: title ?? this.title,
        description: description ?? this.description,
        pictureLink: pictureLink ?? this.pictureLink,
        category: category ?? this.category,
        stage: stage ?? this.stage,
        target: target ?? this.target,
        achievementId: achievementId ?? this.achievementId,
      );
  @override
  String toString() {
    return (StringBuffer('Achievement(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('categoryTitle: $categoryTitle, ')
          ..write('progress: $progress, ')
          ..write('progressPercent: $progressPercent, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('pictureLink: $pictureLink, ')
          ..write('category: $category, ')
          ..write('stage: $stage, ')
          ..write('target: $target, ')
          ..write('achievementId: $achievementId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      categoryTitle,
      progress,
      progressPercent,
      isCompleted,
      title,
      description,
      pictureLink,
      category,
      stage,
      target,
      achievementId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Achievement &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.categoryTitle == this.categoryTitle &&
          other.progress == this.progress &&
          other.progressPercent == this.progressPercent &&
          other.isCompleted == this.isCompleted &&
          other.title == this.title &&
          other.description == this.description &&
          other.pictureLink == this.pictureLink &&
          other.category == this.category &&
          other.stage == this.stage &&
          other.target == this.target &&
          other.achievementId == this.achievementId);
}

class AchievementDBCompanion extends UpdateCompanion<Achievement> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> categoryTitle;
  final Value<int> progress;
  final Value<double> progressPercent;
  final Value<bool> isCompleted;
  final Value<String> title;
  final Value<String> description;
  final Value<String> pictureLink;
  final Value<String> category;
  final Value<int> stage;
  final Value<int> target;
  final Value<int> achievementId;
  const AchievementDBCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.categoryTitle = const Value.absent(),
    this.progress = const Value.absent(),
    this.progressPercent = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.pictureLink = const Value.absent(),
    this.category = const Value.absent(),
    this.stage = const Value.absent(),
    this.target = const Value.absent(),
    this.achievementId = const Value.absent(),
  });
  AchievementDBCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String categoryTitle,
    required int progress,
    required double progressPercent,
    required bool isCompleted,
    required String title,
    required String description,
    required String pictureLink,
    required String category,
    required int stage,
    required int target,
    required int achievementId,
  })  : userId = Value(userId),
        categoryTitle = Value(categoryTitle),
        progress = Value(progress),
        progressPercent = Value(progressPercent),
        isCompleted = Value(isCompleted),
        title = Value(title),
        description = Value(description),
        pictureLink = Value(pictureLink),
        category = Value(category),
        stage = Value(stage),
        target = Value(target),
        achievementId = Value(achievementId);
  static Insertable<Achievement> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? categoryTitle,
    Expression<int>? progress,
    Expression<double>? progressPercent,
    Expression<bool>? isCompleted,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? pictureLink,
    Expression<String>? category,
    Expression<int>? stage,
    Expression<int>? target,
    Expression<int>? achievementId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (categoryTitle != null) 'category_title': categoryTitle,
      if (progress != null) 'progress': progress,
      if (progressPercent != null) 'progress_percent': progressPercent,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (pictureLink != null) 'picture_link': pictureLink,
      if (category != null) 'category': category,
      if (stage != null) 'stage': stage,
      if (target != null) 'target': target,
      if (achievementId != null) 'achievement_id': achievementId,
    });
  }

  AchievementDBCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? categoryTitle,
      Value<int>? progress,
      Value<double>? progressPercent,
      Value<bool>? isCompleted,
      Value<String>? title,
      Value<String>? description,
      Value<String>? pictureLink,
      Value<String>? category,
      Value<int>? stage,
      Value<int>? target,
      Value<int>? achievementId}) {
    return AchievementDBCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      categoryTitle: categoryTitle ?? this.categoryTitle,
      progress: progress ?? this.progress,
      progressPercent: progressPercent ?? this.progressPercent,
      isCompleted: isCompleted ?? this.isCompleted,
      title: title ?? this.title,
      description: description ?? this.description,
      pictureLink: pictureLink ?? this.pictureLink,
      category: category ?? this.category,
      stage: stage ?? this.stage,
      target: target ?? this.target,
      achievementId: achievementId ?? this.achievementId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (categoryTitle.present) {
      map['category_title'] = Variable<String>(categoryTitle.value);
    }
    if (progress.present) {
      map['progress'] = Variable<int>(progress.value);
    }
    if (progressPercent.present) {
      map['progress_percent'] = Variable<double>(progressPercent.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (pictureLink.present) {
      map['picture_link'] = Variable<String>(pictureLink.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (stage.present) {
      map['stage'] = Variable<int>(stage.value);
    }
    if (target.present) {
      map['target'] = Variable<int>(target.value);
    }
    if (achievementId.present) {
      map['achievement_id'] = Variable<int>(achievementId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementDBCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('categoryTitle: $categoryTitle, ')
          ..write('progress: $progress, ')
          ..write('progressPercent: $progressPercent, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('pictureLink: $pictureLink, ')
          ..write('category: $category, ')
          ..write('stage: $stage, ')
          ..write('target: $target, ')
          ..write('achievementId: $achievementId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $UserAuthTable userAuth = $UserAuthTable(this);
  late final $MetricDBTable metricDB = $MetricDBTable(this);
  late final $AchievementCategoryDBTable achievementCategoryDB =
      $AchievementCategoryDBTable(this);
  late final $AchievementDBTable achievementDB = $AchievementDBTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userAuth, metricDB, achievementCategoryDB, achievementDB];
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
  Value<int?> subscriptionType,
  Value<DateTime?> subscriptionAcquisition,
  Value<DateTime?> subscriptionExpired,
  required int allowedAudioSeconds,
  required int allowedVideoSeconds,
  required int energy,
  required String accessToken,
  required String refreshToken,
  required bool isEducationCompleted,
  required String provider,
  required bool isCurrent,
  required bool isFeedbackComplete,
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
  Value<int?> subscriptionType,
  Value<DateTime?> subscriptionAcquisition,
  Value<DateTime?> subscriptionExpired,
  Value<int> allowedAudioSeconds,
  Value<int> allowedVideoSeconds,
  Value<int> energy,
  Value<String> accessToken,
  Value<String> refreshToken,
  Value<bool> isEducationCompleted,
  Value<String> provider,
  Value<bool> isCurrent,
  Value<bool> isFeedbackComplete,
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
            Value<int?> subscriptionType = const Value.absent(),
            Value<DateTime?> subscriptionAcquisition = const Value.absent(),
            Value<DateTime?> subscriptionExpired = const Value.absent(),
            Value<int> allowedAudioSeconds = const Value.absent(),
            Value<int> allowedVideoSeconds = const Value.absent(),
            Value<int> energy = const Value.absent(),
            Value<String> accessToken = const Value.absent(),
            Value<String> refreshToken = const Value.absent(),
            Value<bool> isEducationCompleted = const Value.absent(),
            Value<String> provider = const Value.absent(),
            Value<bool> isCurrent = const Value.absent(),
            Value<bool> isFeedbackComplete = const Value.absent(),
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
            subscriptionType: subscriptionType,
            subscriptionAcquisition: subscriptionAcquisition,
            subscriptionExpired: subscriptionExpired,
            allowedAudioSeconds: allowedAudioSeconds,
            allowedVideoSeconds: allowedVideoSeconds,
            energy: energy,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            provider: provider,
            isCurrent: isCurrent,
            isFeedbackComplete: isFeedbackComplete,
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
            Value<int?> subscriptionType = const Value.absent(),
            Value<DateTime?> subscriptionAcquisition = const Value.absent(),
            Value<DateTime?> subscriptionExpired = const Value.absent(),
            required int allowedAudioSeconds,
            required int allowedVideoSeconds,
            required int energy,
            required String accessToken,
            required String refreshToken,
            required bool isEducationCompleted,
            required String provider,
            required bool isCurrent,
            required bool isFeedbackComplete,
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
            subscriptionType: subscriptionType,
            subscriptionAcquisition: subscriptionAcquisition,
            subscriptionExpired: subscriptionExpired,
            allowedAudioSeconds: allowedAudioSeconds,
            allowedVideoSeconds: allowedVideoSeconds,
            energy: energy,
            accessToken: accessToken,
            refreshToken: refreshToken,
            isEducationCompleted: isEducationCompleted,
            provider: provider,
            isCurrent: isCurrent,
            isFeedbackComplete: isFeedbackComplete,
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

  ColumnFilters<int> get subscriptionType => $state.composableBuilder(
      column: $state.table.subscriptionType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get subscriptionAcquisition =>
      $state.composableBuilder(
          column: $state.table.subscriptionAcquisition,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get subscriptionExpired => $state.composableBuilder(
      column: $state.table.subscriptionExpired,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get allowedAudioSeconds => $state.composableBuilder(
      column: $state.table.allowedAudioSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get allowedVideoSeconds => $state.composableBuilder(
      column: $state.table.allowedVideoSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get energy => $state.composableBuilder(
      column: $state.table.energy,
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

  ColumnFilters<bool> get isFeedbackComplete => $state.composableBuilder(
      column: $state.table.isFeedbackComplete,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter metricDBRefs(
      ComposableFilter Function($$MetricDBTableFilterComposer f) f) {
    final $$MetricDBTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.metricDB,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder, parentComposers) =>
            $$MetricDBTableFilterComposer(ComposerState(
                $state.db, $state.db.metricDB, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter achievementDBRefs(
      ComposableFilter Function($$AchievementDBTableFilterComposer f) f) {
    final $$AchievementDBTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.achievementDB,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder, parentComposers) =>
            $$AchievementDBTableFilterComposer(ComposerState($state.db,
                $state.db.achievementDB, joinBuilder, parentComposers)));
    return f(composer);
  }
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

  ColumnOrderings<int> get subscriptionType => $state.composableBuilder(
      column: $state.table.subscriptionType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get subscriptionAcquisition => $state
      .composableBuilder(
          column: $state.table.subscriptionAcquisition,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get subscriptionExpired => $state.composableBuilder(
      column: $state.table.subscriptionExpired,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get allowedAudioSeconds => $state.composableBuilder(
      column: $state.table.allowedAudioSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get allowedVideoSeconds => $state.composableBuilder(
      column: $state.table.allowedVideoSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get energy => $state.composableBuilder(
      column: $state.table.energy,
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

  ColumnOrderings<bool> get isFeedbackComplete => $state.composableBuilder(
      column: $state.table.isFeedbackComplete,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$MetricDBTableInsertCompanionBuilder = MetricDBCompanion Function({
  Value<int> id,
  required int userId,
  required int days,
  required int alltimeUserwordsAmount,
  required int alltimeLearnedAmount,
  required double alltimeLearnedPercents,
  required int alltimeSpeechSeconds,
  required int alltimeVideoSeconds,
});
typedef $$MetricDBTableUpdateCompanionBuilder = MetricDBCompanion Function({
  Value<int> id,
  Value<int> userId,
  Value<int> days,
  Value<int> alltimeUserwordsAmount,
  Value<int> alltimeLearnedAmount,
  Value<double> alltimeLearnedPercents,
  Value<int> alltimeSpeechSeconds,
  Value<int> alltimeVideoSeconds,
});

class $$MetricDBTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MetricDBTable,
    Metric,
    $$MetricDBTableFilterComposer,
    $$MetricDBTableOrderingComposer,
    $$MetricDBTableProcessedTableManager,
    $$MetricDBTableInsertCompanionBuilder,
    $$MetricDBTableUpdateCompanionBuilder> {
  $$MetricDBTableTableManager(_$AppDatabase db, $MetricDBTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MetricDBTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MetricDBTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$MetricDBTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<int> days = const Value.absent(),
            Value<int> alltimeUserwordsAmount = const Value.absent(),
            Value<int> alltimeLearnedAmount = const Value.absent(),
            Value<double> alltimeLearnedPercents = const Value.absent(),
            Value<int> alltimeSpeechSeconds = const Value.absent(),
            Value<int> alltimeVideoSeconds = const Value.absent(),
          }) =>
              MetricDBCompanion(
            id: id,
            userId: userId,
            days: days,
            alltimeUserwordsAmount: alltimeUserwordsAmount,
            alltimeLearnedAmount: alltimeLearnedAmount,
            alltimeLearnedPercents: alltimeLearnedPercents,
            alltimeSpeechSeconds: alltimeSpeechSeconds,
            alltimeVideoSeconds: alltimeVideoSeconds,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int userId,
            required int days,
            required int alltimeUserwordsAmount,
            required int alltimeLearnedAmount,
            required double alltimeLearnedPercents,
            required int alltimeSpeechSeconds,
            required int alltimeVideoSeconds,
          }) =>
              MetricDBCompanion.insert(
            id: id,
            userId: userId,
            days: days,
            alltimeUserwordsAmount: alltimeUserwordsAmount,
            alltimeLearnedAmount: alltimeLearnedAmount,
            alltimeLearnedPercents: alltimeLearnedPercents,
            alltimeSpeechSeconds: alltimeSpeechSeconds,
            alltimeVideoSeconds: alltimeVideoSeconds,
          ),
        ));
}

class $$MetricDBTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $MetricDBTable,
    Metric,
    $$MetricDBTableFilterComposer,
    $$MetricDBTableOrderingComposer,
    $$MetricDBTableProcessedTableManager,
    $$MetricDBTableInsertCompanionBuilder,
    $$MetricDBTableUpdateCompanionBuilder> {
  $$MetricDBTableProcessedTableManager(super.$state);
}

class $$MetricDBTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MetricDBTable> {
  $$MetricDBTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get days => $state.composableBuilder(
      column: $state.table.days,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get alltimeUserwordsAmount => $state.composableBuilder(
      column: $state.table.alltimeUserwordsAmount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get alltimeLearnedAmount => $state.composableBuilder(
      column: $state.table.alltimeLearnedAmount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get alltimeLearnedPercents => $state.composableBuilder(
      column: $state.table.alltimeLearnedPercents,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get alltimeSpeechSeconds => $state.composableBuilder(
      column: $state.table.alltimeSpeechSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get alltimeVideoSeconds => $state.composableBuilder(
      column: $state.table.alltimeVideoSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$UserAuthTableFilterComposer get userId {
    final $$UserAuthTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $state.db.userAuth,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$UserAuthTableFilterComposer(ComposerState(
                $state.db, $state.db.userAuth, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$MetricDBTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MetricDBTable> {
  $$MetricDBTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get days => $state.composableBuilder(
      column: $state.table.days,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get alltimeUserwordsAmount => $state.composableBuilder(
      column: $state.table.alltimeUserwordsAmount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get alltimeLearnedAmount => $state.composableBuilder(
      column: $state.table.alltimeLearnedAmount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get alltimeLearnedPercents =>
      $state.composableBuilder(
          column: $state.table.alltimeLearnedPercents,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get alltimeSpeechSeconds => $state.composableBuilder(
      column: $state.table.alltimeSpeechSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get alltimeVideoSeconds => $state.composableBuilder(
      column: $state.table.alltimeVideoSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$UserAuthTableOrderingComposer get userId {
    final $$UserAuthTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $state.db.userAuth,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$UserAuthTableOrderingComposer(ComposerState(
                $state.db, $state.db.userAuth, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$AchievementCategoryDBTableInsertCompanionBuilder
    = AchievementCategoryDBCompanion Function({
  required String title,
  Value<int> rowid,
});
typedef $$AchievementCategoryDBTableUpdateCompanionBuilder
    = AchievementCategoryDBCompanion Function({
  Value<String> title,
  Value<int> rowid,
});

class $$AchievementCategoryDBTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AchievementCategoryDBTable,
    AchievementCategory,
    $$AchievementCategoryDBTableFilterComposer,
    $$AchievementCategoryDBTableOrderingComposer,
    $$AchievementCategoryDBTableProcessedTableManager,
    $$AchievementCategoryDBTableInsertCompanionBuilder,
    $$AchievementCategoryDBTableUpdateCompanionBuilder> {
  $$AchievementCategoryDBTableTableManager(
      _$AppDatabase db, $AchievementCategoryDBTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$AchievementCategoryDBTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$AchievementCategoryDBTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AchievementCategoryDBTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> title = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AchievementCategoryDBCompanion(
            title: title,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String title,
            Value<int> rowid = const Value.absent(),
          }) =>
              AchievementCategoryDBCompanion.insert(
            title: title,
            rowid: rowid,
          ),
        ));
}

class $$AchievementCategoryDBTableProcessedTableManager
    extends ProcessedTableManager<
        _$AppDatabase,
        $AchievementCategoryDBTable,
        AchievementCategory,
        $$AchievementCategoryDBTableFilterComposer,
        $$AchievementCategoryDBTableOrderingComposer,
        $$AchievementCategoryDBTableProcessedTableManager,
        $$AchievementCategoryDBTableInsertCompanionBuilder,
        $$AchievementCategoryDBTableUpdateCompanionBuilder> {
  $$AchievementCategoryDBTableProcessedTableManager(super.$state);
}

class $$AchievementCategoryDBTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AchievementCategoryDBTable> {
  $$AchievementCategoryDBTableFilterComposer(super.$state);
  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter achievementDBRefs(
      ComposableFilter Function($$AchievementDBTableFilterComposer f) f) {
    final $$AchievementDBTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.title,
        referencedTable: $state.db.achievementDB,
        getReferencedColumn: (t) => t.categoryTitle,
        builder: (joinBuilder, parentComposers) =>
            $$AchievementDBTableFilterComposer(ComposerState($state.db,
                $state.db.achievementDB, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$AchievementCategoryDBTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AchievementCategoryDBTable> {
  $$AchievementCategoryDBTableOrderingComposer(super.$state);
  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$AchievementDBTableInsertCompanionBuilder = AchievementDBCompanion
    Function({
  Value<int> id,
  required int userId,
  required String categoryTitle,
  required int progress,
  required double progressPercent,
  required bool isCompleted,
  required String title,
  required String description,
  required String pictureLink,
  required String category,
  required int stage,
  required int target,
  required int achievementId,
});
typedef $$AchievementDBTableUpdateCompanionBuilder = AchievementDBCompanion
    Function({
  Value<int> id,
  Value<int> userId,
  Value<String> categoryTitle,
  Value<int> progress,
  Value<double> progressPercent,
  Value<bool> isCompleted,
  Value<String> title,
  Value<String> description,
  Value<String> pictureLink,
  Value<String> category,
  Value<int> stage,
  Value<int> target,
  Value<int> achievementId,
});

class $$AchievementDBTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AchievementDBTable,
    Achievement,
    $$AchievementDBTableFilterComposer,
    $$AchievementDBTableOrderingComposer,
    $$AchievementDBTableProcessedTableManager,
    $$AchievementDBTableInsertCompanionBuilder,
    $$AchievementDBTableUpdateCompanionBuilder> {
  $$AchievementDBTableTableManager(_$AppDatabase db, $AchievementDBTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AchievementDBTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AchievementDBTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AchievementDBTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> categoryTitle = const Value.absent(),
            Value<int> progress = const Value.absent(),
            Value<double> progressPercent = const Value.absent(),
            Value<bool> isCompleted = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> pictureLink = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<int> stage = const Value.absent(),
            Value<int> target = const Value.absent(),
            Value<int> achievementId = const Value.absent(),
          }) =>
              AchievementDBCompanion(
            id: id,
            userId: userId,
            categoryTitle: categoryTitle,
            progress: progress,
            progressPercent: progressPercent,
            isCompleted: isCompleted,
            title: title,
            description: description,
            pictureLink: pictureLink,
            category: category,
            stage: stage,
            target: target,
            achievementId: achievementId,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required int userId,
            required String categoryTitle,
            required int progress,
            required double progressPercent,
            required bool isCompleted,
            required String title,
            required String description,
            required String pictureLink,
            required String category,
            required int stage,
            required int target,
            required int achievementId,
          }) =>
              AchievementDBCompanion.insert(
            id: id,
            userId: userId,
            categoryTitle: categoryTitle,
            progress: progress,
            progressPercent: progressPercent,
            isCompleted: isCompleted,
            title: title,
            description: description,
            pictureLink: pictureLink,
            category: category,
            stage: stage,
            target: target,
            achievementId: achievementId,
          ),
        ));
}

class $$AchievementDBTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $AchievementDBTable,
    Achievement,
    $$AchievementDBTableFilterComposer,
    $$AchievementDBTableOrderingComposer,
    $$AchievementDBTableProcessedTableManager,
    $$AchievementDBTableInsertCompanionBuilder,
    $$AchievementDBTableUpdateCompanionBuilder> {
  $$AchievementDBTableProcessedTableManager(super.$state);
}

class $$AchievementDBTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AchievementDBTable> {
  $$AchievementDBTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get progress => $state.composableBuilder(
      column: $state.table.progress,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get progressPercent => $state.composableBuilder(
      column: $state.table.progressPercent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCompleted => $state.composableBuilder(
      column: $state.table.isCompleted,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pictureLink => $state.composableBuilder(
      column: $state.table.pictureLink,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get stage => $state.composableBuilder(
      column: $state.table.stage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get target => $state.composableBuilder(
      column: $state.table.target,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get achievementId => $state.composableBuilder(
      column: $state.table.achievementId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$UserAuthTableFilterComposer get userId {
    final $$UserAuthTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $state.db.userAuth,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$UserAuthTableFilterComposer(ComposerState(
                $state.db, $state.db.userAuth, joinBuilder, parentComposers)));
    return composer;
  }

  $$AchievementCategoryDBTableFilterComposer get categoryTitle {
    final $$AchievementCategoryDBTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.categoryTitle,
            referencedTable: $state.db.achievementCategoryDB,
            getReferencedColumn: (t) => t.title,
            builder: (joinBuilder, parentComposers) =>
                $$AchievementCategoryDBTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.achievementCategoryDB,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class $$AchievementDBTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AchievementDBTable> {
  $$AchievementDBTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get progress => $state.composableBuilder(
      column: $state.table.progress,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get progressPercent => $state.composableBuilder(
      column: $state.table.progressPercent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCompleted => $state.composableBuilder(
      column: $state.table.isCompleted,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pictureLink => $state.composableBuilder(
      column: $state.table.pictureLink,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get stage => $state.composableBuilder(
      column: $state.table.stage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get target => $state.composableBuilder(
      column: $state.table.target,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get achievementId => $state.composableBuilder(
      column: $state.table.achievementId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$UserAuthTableOrderingComposer get userId {
    final $$UserAuthTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $state.db.userAuth,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$UserAuthTableOrderingComposer(ComposerState(
                $state.db, $state.db.userAuth, joinBuilder, parentComposers)));
    return composer;
  }

  $$AchievementCategoryDBTableOrderingComposer get categoryTitle {
    final $$AchievementCategoryDBTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.categoryTitle,
            referencedTable: $state.db.achievementCategoryDB,
            getReferencedColumn: (t) => t.title,
            builder: (joinBuilder, parentComposers) =>
                $$AchievementCategoryDBTableOrderingComposer(ComposerState(
                    $state.db,
                    $state.db.achievementCategoryDB,
                    joinBuilder,
                    parentComposers)));
    return composer;
  }
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$UserAuthTableTableManager get userAuth =>
      $$UserAuthTableTableManager(_db, _db.userAuth);
  $$MetricDBTableTableManager get metricDB =>
      $$MetricDBTableTableManager(_db, _db.metricDB);
  $$AchievementCategoryDBTableTableManager get achievementCategoryDB =>
      $$AchievementCategoryDBTableTableManager(_db, _db.achievementCategoryDB);
  $$AchievementDBTableTableManager get achievementDB =>
      $$AchievementDBTableTableManager(_db, _db.achievementDB);
}
