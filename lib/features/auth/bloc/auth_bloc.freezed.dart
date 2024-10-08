// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestCodeImplCopyWith<$Res> {
  factory _$$RequestCodeImplCopyWith(
          _$RequestCodeImpl value, $Res Function(_$RequestCodeImpl) then) =
      __$$RequestCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime birthDate,
      String? nickname,
      String emailAddress,
      String password});
}

/// @nodoc
class __$$RequestCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestCodeImpl>
    implements _$$RequestCodeImplCopyWith<$Res> {
  __$$RequestCodeImplCopyWithImpl(
      _$RequestCodeImpl _value, $Res Function(_$RequestCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = null,
    Object? nickname = freezed,
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$RequestCodeImpl(
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestCodeImpl with DiagnosticableTreeMixin implements _RequestCode {
  const _$RequestCodeImpl(
      {required this.birthDate,
      this.nickname,
      required this.emailAddress,
      required this.password});

  @override
  final DateTime birthDate;
  @override
  final String? nickname;
  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.requestCode(birthDate: $birthDate, nickname: $nickname, emailAddress: $emailAddress, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.requestCode'))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCodeImpl &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, birthDate, nickname, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCodeImplCopyWith<_$RequestCodeImpl> get copyWith =>
      __$$RequestCodeImplCopyWithImpl<_$RequestCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return requestCode(birthDate, nickname, emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return requestCode?.call(birthDate, nickname, emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(birthDate, nickname, emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class _RequestCode implements AuthEvent {
  const factory _RequestCode(
      {required final DateTime birthDate,
      final String? nickname,
      required final String emailAddress,
      required final String password}) = _$RequestCodeImpl;

  DateTime get birthDate;
  String? get nickname;
  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$RequestCodeImplCopyWith<_$RequestCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$RegisterUserImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl with DiagnosticableTreeMixin implements _RegisterUser {
  const _$RegisterUserImpl({required this.code});

  @override
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registerUser(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.registerUser'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return registerUser(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return registerUser?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements AuthEvent {
  const factory _RegisterUser({required final String code}) =
      _$RegisterUserImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithVKImplCopyWith<$Res> {
  factory _$$SignInWithVKImplCopyWith(
          _$SignInWithVKImpl value, $Res Function(_$SignInWithVKImpl) then) =
      __$$SignInWithVKImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithVKImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithVKImpl>
    implements _$$SignInWithVKImplCopyWith<$Res> {
  __$$SignInWithVKImplCopyWithImpl(
      _$SignInWithVKImpl _value, $Res Function(_$SignInWithVKImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithVKImpl with DiagnosticableTreeMixin implements _SignInWithVK {
  const _$SignInWithVKImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithVK()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signInWithVK'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithVKImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return signInWithVK();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return signInWithVK?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithVK != null) {
      return signInWithVK();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return signInWithVK(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return signInWithVK?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithVK != null) {
      return signInWithVK(this);
    }
    return orElse();
  }
}

abstract class _SignInWithVK implements AuthEvent {
  const factory _SignInWithVK() = _$SignInWithVKImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogleImpl
    with DiagnosticableTreeMixin
    implements _SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signInWithGoogle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements AuthEvent {
  const factory _SignInWithGoogle() = _$SignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$SignInWithMailPasswordImplCopyWith<$Res> {
  factory _$$SignInWithMailPasswordImplCopyWith(
          _$SignInWithMailPasswordImpl value,
          $Res Function(_$SignInWithMailPasswordImpl) then) =
      __$$SignInWithMailPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class __$$SignInWithMailPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithMailPasswordImpl>
    implements _$$SignInWithMailPasswordImplCopyWith<$Res> {
  __$$SignInWithMailPasswordImplCopyWithImpl(
      _$SignInWithMailPasswordImpl _value,
      $Res Function(_$SignInWithMailPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithMailPasswordImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithMailPasswordImpl
    with DiagnosticableTreeMixin
    implements _SignInWithMailPassword {
  const _$SignInWithMailPasswordImpl(
      {required this.emailAddress, required this.password});

  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithMailPassword(emailAddress: $emailAddress, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInWithMailPassword'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithMailPasswordImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithMailPasswordImplCopyWith<_$SignInWithMailPasswordImpl>
      get copyWith => __$$SignInWithMailPasswordImplCopyWithImpl<
          _$SignInWithMailPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return signInWithMailPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return signInWithMailPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithMailPassword != null) {
      return signInWithMailPassword(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return signInWithMailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return signInWithMailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithMailPassword != null) {
      return signInWithMailPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithMailPassword implements AuthEvent {
  const factory _SignInWithMailPassword(
      {required final String emailAddress,
      required final String password}) = _$SignInWithMailPasswordImpl;

  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInWithMailPasswordImplCopyWith<_$SignInWithMailPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl with DiagnosticableTreeMixin implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$ChangeDataForRegisterImplCopyWith<$Res> {
  factory _$$ChangeDataForRegisterImplCopyWith(
          _$ChangeDataForRegisterImpl value,
          $Res Function(_$ChangeDataForRegisterImpl) then) =
      __$$ChangeDataForRegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeDataForRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeDataForRegisterImpl>
    implements _$$ChangeDataForRegisterImplCopyWith<$Res> {
  __$$ChangeDataForRegisterImplCopyWithImpl(_$ChangeDataForRegisterImpl _value,
      $Res Function(_$ChangeDataForRegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeDataForRegisterImpl
    with DiagnosticableTreeMixin
    implements _ChangeDataForRegister {
  const _$ChangeDataForRegisterImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.changeDataForRegister()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthEvent.changeDataForRegister'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDataForRegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return changeDataForRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return changeDataForRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (changeDataForRegister != null) {
      return changeDataForRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return changeDataForRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return changeDataForRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (changeDataForRegister != null) {
      return changeDataForRegister(this);
    }
    return orElse();
  }
}

abstract class _ChangeDataForRegister implements AuthEvent {
  const factory _ChangeDataForRegister() = _$ChangeDataForRegisterImpl;
}

/// @nodoc
abstract class _$$AutoLoginImplCopyWith<$Res> {
  factory _$$AutoLoginImplCopyWith(
          _$AutoLoginImpl value, $Res Function(_$AutoLoginImpl) then) =
      __$$AutoLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AutoLoginImpl>
    implements _$$AutoLoginImplCopyWith<$Res> {
  __$$AutoLoginImplCopyWithImpl(
      _$AutoLoginImpl _value, $Res Function(_$AutoLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutoLoginImpl with DiagnosticableTreeMixin implements _AutoLogin {
  const _$AutoLoginImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.autoLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.autoLogin'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutoLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime birthDate, String? nickname,
            String emailAddress, String password)
        requestCode,
    required TResult Function(String code) registerUser,
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function() changeDataForRegister,
    required TResult Function() autoLogin,
  }) {
    return autoLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult? Function(String code)? registerUser,
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function()? changeDataForRegister,
    TResult? Function()? autoLogin,
  }) {
    return autoLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime birthDate, String? nickname, String emailAddress,
            String password)?
        requestCode,
    TResult Function(String code)? registerUser,
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function()? changeDataForRegister,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeDataForRegister value)
        changeDataForRegister,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult? Function(_AutoLogin value)? autoLogin,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeDataForRegister value)? changeDataForRegister,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class _AutoLogin implements AuthEvent {
  const factory _AutoLogin() = _$AutoLoginImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl with DiagnosticableTreeMixin implements _AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthState {
  const factory _AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthSignInScreenImplCopyWith<$Res> {
  factory _$$AuthSignInScreenImplCopyWith(_$AuthSignInScreenImpl value,
          $Res Function(_$AuthSignInScreenImpl) then) =
      __$$AuthSignInScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInScreenImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSignInScreenImpl>
    implements _$$AuthSignInScreenImplCopyWith<$Res> {
  __$$AuthSignInScreenImplCopyWithImpl(_$AuthSignInScreenImpl _value,
      $Res Function(_$AuthSignInScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInScreenImpl
    with DiagnosticableTreeMixin
    implements _AuthSignInScreen {
  const _$AuthSignInScreenImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signInScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.signInScreen'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignInScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) {
    return signInScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) {
    return signInScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) {
    if (signInScreen != null) {
      return signInScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) {
    return signInScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) {
    return signInScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) {
    if (signInScreen != null) {
      return signInScreen(this);
    }
    return orElse();
  }
}

abstract class _AuthSignInScreen implements AuthState {
  const factory _AuthSignInScreen() = _$AuthSignInScreenImpl;
}

/// @nodoc
abstract class _$$AuthWaitingAnswerImplCopyWith<$Res> {
  factory _$$AuthWaitingAnswerImplCopyWith(_$AuthWaitingAnswerImpl value,
          $Res Function(_$AuthWaitingAnswerImpl) then) =
      __$$AuthWaitingAnswerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthWaitingAnswerImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthWaitingAnswerImpl>
    implements _$$AuthWaitingAnswerImplCopyWith<$Res> {
  __$$AuthWaitingAnswerImplCopyWithImpl(_$AuthWaitingAnswerImpl _value,
      $Res Function(_$AuthWaitingAnswerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthWaitingAnswerImpl
    with DiagnosticableTreeMixin
    implements _AuthWaitingAnswer {
  const _$AuthWaitingAnswerImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.waitingAnswer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.waitingAnswer'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthWaitingAnswerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) {
    return waitingAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) {
    return waitingAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) {
    if (waitingAnswer != null) {
      return waitingAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) {
    return waitingAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) {
    return waitingAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) {
    if (waitingAnswer != null) {
      return waitingAnswer(this);
    }
    return orElse();
  }
}

abstract class _AuthWaitingAnswer implements AuthState {
  const factory _AuthWaitingAnswer() = _$AuthWaitingAnswerImpl;
}

/// @nodoc
abstract class _$$AuthSuccessImplCopyWith<$Res> {
  factory _$$AuthSuccessImplCopyWith(
          _$AuthSuccessImpl value, $Res Function(_$AuthSuccessImpl) then) =
      __$$AuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSuccess success});
}

/// @nodoc
class __$$AuthSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessImpl>
    implements _$$AuthSuccessImplCopyWith<$Res> {
  __$$AuthSuccessImplCopyWithImpl(
      _$AuthSuccessImpl _value, $Res Function(_$AuthSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$AuthSuccessImpl(
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as AuthSuccess,
    ));
  }
}

/// @nodoc

class _$AuthSuccessImpl with DiagnosticableTreeMixin implements _AuthSuccess {
  const _$AuthSuccessImpl(this.success);

  @override
  final AuthSuccess success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.success(success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.success'))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      __$$AuthSuccessImplCopyWithImpl<_$AuthSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthState {
  const factory _AuthSuccess(final AuthSuccess success) = _$AuthSuccessImpl;

  AuthSuccess get success;
  @JsonKey(ignore: true)
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailedImplCopyWith<$Res> {
  factory _$$AuthFailedImplCopyWith(
          _$AuthFailedImpl value, $Res Function(_$AuthFailedImpl) then) =
      __$$AuthFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthError error});
}

/// @nodoc
class __$$AuthFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedImpl>
    implements _$$AuthFailedImplCopyWith<$Res> {
  __$$AuthFailedImplCopyWithImpl(
      _$AuthFailedImpl _value, $Res Function(_$AuthFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthError,
    ));
  }
}

/// @nodoc

class _$AuthFailedImpl with DiagnosticableTreeMixin implements _AuthFailed {
  const _$AuthFailedImpl(this.error);

  @override
  final AuthError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.failed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.failed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      __$$AuthFailedImplCopyWithImpl<_$AuthFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInScreen,
    required TResult Function() waitingAnswer,
    required TResult Function(AuthSuccess success) success,
    required TResult Function(AuthError error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInScreen,
    TResult? Function()? waitingAnswer,
    TResult? Function(AuthSuccess success)? success,
    TResult? Function(AuthError error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInScreen,
    TResult Function()? waitingAnswer,
    TResult Function(AuthSuccess success)? success,
    TResult Function(AuthError error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthSignInScreen value) signInScreen,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthSignInScreen value)? signInScreen,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthSignInScreen value)? signInScreen,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailed implements AuthState {
  const factory _AuthFailed(final AuthError error) = _$AuthFailedImpl;

  AuthError get error;
  @JsonKey(ignore: true)
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
