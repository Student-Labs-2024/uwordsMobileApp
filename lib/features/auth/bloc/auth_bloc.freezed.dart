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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
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
abstract class _$$RequestCodeEventImplCopyWith<$Res> {
  factory _$$RequestCodeEventImplCopyWith(_$RequestCodeEventImpl value,
          $Res Function(_$RequestCodeEventImpl) then) =
      __$$RequestCodeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime birthDate,
      String? nickname,
      String emailAddress,
      String password});
}

/// @nodoc
class __$$RequestCodeEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestCodeEventImpl>
    implements _$$RequestCodeEventImplCopyWith<$Res> {
  __$$RequestCodeEventImplCopyWithImpl(_$RequestCodeEventImpl _value,
      $Res Function(_$RequestCodeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthDate = null,
    Object? nickname = freezed,
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$RequestCodeEventImpl(
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

class _$RequestCodeEventImpl
    with DiagnosticableTreeMixin
    implements _RequestCodeEvent {
  const _$RequestCodeEventImpl(
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
            other is _$RequestCodeEventImpl &&
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
  _$$RequestCodeEventImplCopyWith<_$RequestCodeEventImpl> get copyWith =>
      __$$RequestCodeEventImplCopyWithImpl<_$RequestCodeEventImpl>(
          this, _$identity);

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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class _RequestCodeEvent implements AuthEvent {
  const factory _RequestCodeEvent(
      {required final DateTime birthDate,
      final String? nickname,
      required final String emailAddress,
      required final String password}) = _$RequestCodeEventImpl;

  DateTime get birthDate;
  String? get nickname;
  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$RequestCodeEventImplCopyWith<_$RequestCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserEventImplCopyWith<$Res> {
  factory _$$RegisterUserEventImplCopyWith(_$RegisterUserEventImpl value,
          $Res Function(_$RegisterUserEventImpl) then) =
      __$$RegisterUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$RegisterUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserEventImpl>
    implements _$$RegisterUserEventImplCopyWith<$Res> {
  __$$RegisterUserEventImplCopyWithImpl(_$RegisterUserEventImpl _value,
      $Res Function(_$RegisterUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$RegisterUserEventImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUserEventImpl
    with DiagnosticableTreeMixin
    implements _RegisterUserEvent {
  const _$RegisterUserEventImpl({required this.code});

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
            other is _$RegisterUserEventImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserEventImplCopyWith<_$RegisterUserEventImpl> get copyWith =>
      __$$RegisterUserEventImplCopyWithImpl<_$RegisterUserEventImpl>(
          this, _$identity);

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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserEvent implements AuthEvent {
  const factory _RegisterUserEvent({required final String code}) =
      _$RegisterUserEventImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$RegisterUserEventImplCopyWith<_$RegisterUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithVKEventImplCopyWith<$Res> {
  factory _$$SignInWithVKEventImplCopyWith(_$SignInWithVKEventImpl value,
          $Res Function(_$SignInWithVKEventImpl) then) =
      __$$SignInWithVKEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithVKEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithVKEventImpl>
    implements _$$SignInWithVKEventImplCopyWith<$Res> {
  __$$SignInWithVKEventImplCopyWithImpl(_$SignInWithVKEventImpl _value,
      $Res Function(_$SignInWithVKEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithVKEventImpl
    with DiagnosticableTreeMixin
    implements _SignInWithVKEvent {
  const _$SignInWithVKEventImpl();

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
        (other.runtimeType == runtimeType && other is _$SignInWithVKEventImpl);
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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return signInWithVK(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return signInWithVK?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithVK != null) {
      return signInWithVK(this);
    }
    return orElse();
  }
}

abstract class _SignInWithVKEvent implements AuthEvent {
  const factory _SignInWithVKEvent() = _$SignInWithVKEventImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleEventImplCopyWith<$Res> {
  factory _$$SignInWithGoogleEventImplCopyWith(
          _$SignInWithGoogleEventImpl value,
          $Res Function(_$SignInWithGoogleEventImpl) then) =
      __$$SignInWithGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleEventImpl>
    implements _$$SignInWithGoogleEventImplCopyWith<$Res> {
  __$$SignInWithGoogleEventImplCopyWithImpl(_$SignInWithGoogleEventImpl _value,
      $Res Function(_$SignInWithGoogleEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogleEventImpl
    with DiagnosticableTreeMixin
    implements _SignInWithGoogleEvent {
  const _$SignInWithGoogleEventImpl();

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
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleEventImpl);
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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleEvent implements AuthEvent {
  const factory _SignInWithGoogleEvent() = _$SignInWithGoogleEventImpl;
}

/// @nodoc
abstract class _$$SignInWithMailPasswordEventImplCopyWith<$Res> {
  factory _$$SignInWithMailPasswordEventImplCopyWith(
          _$SignInWithMailPasswordEventImpl value,
          $Res Function(_$SignInWithMailPasswordEventImpl) then) =
      __$$SignInWithMailPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress, String password});
}

/// @nodoc
class __$$SignInWithMailPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithMailPasswordEventImpl>
    implements _$$SignInWithMailPasswordEventImplCopyWith<$Res> {
  __$$SignInWithMailPasswordEventImplCopyWithImpl(
      _$SignInWithMailPasswordEventImpl _value,
      $Res Function(_$SignInWithMailPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithMailPasswordEventImpl(
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

class _$SignInWithMailPasswordEventImpl
    with DiagnosticableTreeMixin
    implements _SignInWithMailPasswordEvent {
  const _$SignInWithMailPasswordEventImpl(
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
            other is _$SignInWithMailPasswordEventImpl &&
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
  _$$SignInWithMailPasswordEventImplCopyWith<_$SignInWithMailPasswordEventImpl>
      get copyWith => __$$SignInWithMailPasswordEventImplCopyWithImpl<
          _$SignInWithMailPasswordEventImpl>(this, _$identity);

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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return signInWithMailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return signInWithMailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (signInWithMailPassword != null) {
      return signInWithMailPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithMailPasswordEvent implements AuthEvent {
  const factory _SignInWithMailPasswordEvent(
      {required final String emailAddress,
      required final String password}) = _$SignInWithMailPasswordEventImpl;

  String get emailAddress;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInWithMailPasswordEventImplCopyWith<_$SignInWithMailPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventImplCopyWith<$Res> {
  factory _$$LogOutEventImplCopyWith(
          _$LogOutEventImpl value, $Res Function(_$LogOutEventImpl) then) =
      __$$LogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEventImpl>
    implements _$$LogOutEventImplCopyWith<$Res> {
  __$$LogOutEventImplCopyWithImpl(
      _$LogOutEventImpl _value, $Res Function(_$LogOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEventImpl with DiagnosticableTreeMixin implements _LogOutEvent {
  const _$LogOutEventImpl();

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
        (other.runtimeType == runtimeType && other is _$LogOutEventImpl);
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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOutEvent implements AuthEvent {
  const factory _LogOutEvent() = _$LogOutEventImpl;
}

/// @nodoc
abstract class _$$ChangeDataForRegisterEventImplCopyWith<$Res> {
  factory _$$ChangeDataForRegisterEventImplCopyWith(
          _$ChangeDataForRegisterEventImpl value,
          $Res Function(_$ChangeDataForRegisterEventImpl) then) =
      __$$ChangeDataForRegisterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeDataForRegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeDataForRegisterEventImpl>
    implements _$$ChangeDataForRegisterEventImplCopyWith<$Res> {
  __$$ChangeDataForRegisterEventImplCopyWithImpl(
      _$ChangeDataForRegisterEventImpl _value,
      $Res Function(_$ChangeDataForRegisterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeDataForRegisterEventImpl
    with DiagnosticableTreeMixin
    implements _ChangeDataForRegisterEvent {
  const _$ChangeDataForRegisterEventImpl();

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
            other is _$ChangeDataForRegisterEventImpl);
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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return changeDataForRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return changeDataForRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (changeDataForRegister != null) {
      return changeDataForRegister(this);
    }
    return orElse();
  }
}

abstract class _ChangeDataForRegisterEvent implements AuthEvent {
  const factory _ChangeDataForRegisterEvent() =
      _$ChangeDataForRegisterEventImpl;
}

/// @nodoc
abstract class _$$AutoLoginEventImplCopyWith<$Res> {
  factory _$$AutoLoginEventImplCopyWith(_$AutoLoginEventImpl value,
          $Res Function(_$AutoLoginEventImpl) then) =
      __$$AutoLoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoLoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AutoLoginEventImpl>
    implements _$$AutoLoginEventImplCopyWith<$Res> {
  __$$AutoLoginEventImplCopyWithImpl(
      _$AutoLoginEventImpl _value, $Res Function(_$AutoLoginEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutoLoginEventImpl
    with DiagnosticableTreeMixin
    implements _AutoLoginEvent {
  const _$AutoLoginEventImpl();

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
        (other.runtimeType == runtimeType && other is _$AutoLoginEventImpl);
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
    required TResult Function(_RequestCodeEvent value) requestCode,
    required TResult Function(_RegisterUserEvent value) registerUser,
    required TResult Function(_SignInWithVKEvent value) signInWithVK,
    required TResult Function(_SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(_SignInWithMailPasswordEvent value)
        signInWithMailPassword,
    required TResult Function(_LogOutEvent value) logOut,
    required TResult Function(_ChangeDataForRegisterEvent value)
        changeDataForRegister,
    required TResult Function(_AutoLoginEvent value) autoLogin,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestCodeEvent value)? requestCode,
    TResult? Function(_RegisterUserEvent value)? registerUser,
    TResult? Function(_SignInWithVKEvent value)? signInWithVK,
    TResult? Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult? Function(_LogOutEvent value)? logOut,
    TResult? Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult? Function(_AutoLoginEvent value)? autoLogin,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestCodeEvent value)? requestCode,
    TResult Function(_RegisterUserEvent value)? registerUser,
    TResult Function(_SignInWithVKEvent value)? signInWithVK,
    TResult Function(_SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(_SignInWithMailPasswordEvent value)?
        signInWithMailPassword,
    TResult Function(_LogOutEvent value)? logOut,
    TResult Function(_ChangeDataForRegisterEvent value)? changeDataForRegister,
    TResult Function(_AutoLoginEvent value)? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class _AutoLoginEvent implements AuthEvent {
  const factory _AutoLoginEvent() = _$AutoLoginEventImpl;
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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
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
abstract class _$$AuthInitialStateImplCopyWith<$Res> {
  factory _$$AuthInitialStateImplCopyWith(_$AuthInitialStateImpl value,
          $Res Function(_$AuthInitialStateImpl) then) =
      __$$AuthInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialStateImpl>
    implements _$$AuthInitialStateImplCopyWith<$Res> {
  __$$AuthInitialStateImplCopyWithImpl(_$AuthInitialStateImpl _value,
      $Res Function(_$AuthInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialStateImpl
    with DiagnosticableTreeMixin
    implements _AuthInitialState {
  const _$AuthInitialStateImpl();

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
        (other.runtimeType == runtimeType && other is _$AuthInitialStateImpl);
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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitialState implements AuthState {
  const factory _AuthInitialState() = _$AuthInitialStateImpl;
}

/// @nodoc
abstract class _$$AuthSignInScreenStateImplCopyWith<$Res> {
  factory _$$AuthSignInScreenStateImplCopyWith(
          _$AuthSignInScreenStateImpl value,
          $Res Function(_$AuthSignInScreenStateImpl) then) =
      __$$AuthSignInScreenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignInScreenStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSignInScreenStateImpl>
    implements _$$AuthSignInScreenStateImplCopyWith<$Res> {
  __$$AuthSignInScreenStateImplCopyWithImpl(_$AuthSignInScreenStateImpl _value,
      $Res Function(_$AuthSignInScreenStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignInScreenStateImpl
    with DiagnosticableTreeMixin
    implements _AuthSignInScreenState {
  const _$AuthSignInScreenStateImpl();

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
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInScreenStateImpl);
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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) {
    return signInScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) {
    return signInScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (signInScreen != null) {
      return signInScreen(this);
    }
    return orElse();
  }
}

abstract class _AuthSignInScreenState implements AuthState {
  const factory _AuthSignInScreenState() = _$AuthSignInScreenStateImpl;
}

/// @nodoc
abstract class _$$AuthWaitingAnswerStateImplCopyWith<$Res> {
  factory _$$AuthWaitingAnswerStateImplCopyWith(
          _$AuthWaitingAnswerStateImpl value,
          $Res Function(_$AuthWaitingAnswerStateImpl) then) =
      __$$AuthWaitingAnswerStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthWaitingAnswerStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthWaitingAnswerStateImpl>
    implements _$$AuthWaitingAnswerStateImplCopyWith<$Res> {
  __$$AuthWaitingAnswerStateImplCopyWithImpl(
      _$AuthWaitingAnswerStateImpl _value,
      $Res Function(_$AuthWaitingAnswerStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthWaitingAnswerStateImpl
    with DiagnosticableTreeMixin
    implements _AuthWaitingAnswerState {
  const _$AuthWaitingAnswerStateImpl();

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
        (other.runtimeType == runtimeType &&
            other is _$AuthWaitingAnswerStateImpl);
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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) {
    return waitingAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) {
    return waitingAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (waitingAnswer != null) {
      return waitingAnswer(this);
    }
    return orElse();
  }
}

abstract class _AuthWaitingAnswerState implements AuthState {
  const factory _AuthWaitingAnswerState() = _$AuthWaitingAnswerStateImpl;
}

/// @nodoc
abstract class _$$AuthSuccessStateImplCopyWith<$Res> {
  factory _$$AuthSuccessStateImplCopyWith(_$AuthSuccessStateImpl value,
          $Res Function(_$AuthSuccessStateImpl) then) =
      __$$AuthSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSuccess success});
}

/// @nodoc
class __$$AuthSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessStateImpl>
    implements _$$AuthSuccessStateImplCopyWith<$Res> {
  __$$AuthSuccessStateImplCopyWithImpl(_$AuthSuccessStateImpl _value,
      $Res Function(_$AuthSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$AuthSuccessStateImpl(
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as AuthSuccess,
    ));
  }
}

/// @nodoc

class _$AuthSuccessStateImpl
    with DiagnosticableTreeMixin
    implements _AuthSuccessState {
  const _$AuthSuccessStateImpl(this.success);

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
            other is _$AuthSuccessStateImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessStateImplCopyWith<_$AuthSuccessStateImpl> get copyWith =>
      __$$AuthSuccessStateImplCopyWithImpl<_$AuthSuccessStateImpl>(
          this, _$identity);

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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccessState implements AuthState {
  const factory _AuthSuccessState(final AuthSuccess success) =
      _$AuthSuccessStateImpl;

  AuthSuccess get success;
  @JsonKey(ignore: true)
  _$$AuthSuccessStateImplCopyWith<_$AuthSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailedStateImplCopyWith<$Res> {
  factory _$$AuthFailedStateImplCopyWith(_$AuthFailedStateImpl value,
          $Res Function(_$AuthFailedStateImpl) then) =
      __$$AuthFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthError error});
}

/// @nodoc
class __$$AuthFailedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedStateImpl>
    implements _$$AuthFailedStateImplCopyWith<$Res> {
  __$$AuthFailedStateImplCopyWithImpl(
      _$AuthFailedStateImpl _value, $Res Function(_$AuthFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthFailedStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthError,
    ));
  }
}

/// @nodoc

class _$AuthFailedStateImpl
    with DiagnosticableTreeMixin
    implements _AuthFailedState {
  const _$AuthFailedStateImpl(this.error);

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
            other is _$AuthFailedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailedStateImplCopyWith<_$AuthFailedStateImpl> get copyWith =>
      __$$AuthFailedStateImplCopyWithImpl<_$AuthFailedStateImpl>(
          this, _$identity);

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
    required TResult Function(_AuthInitialState value) initial,
    required TResult Function(_AuthSignInScreenState value) signInScreen,
    required TResult Function(_AuthWaitingAnswerState value) waitingAnswer,
    required TResult Function(_AuthSuccessState value) success,
    required TResult Function(_AuthFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitialState value)? initial,
    TResult? Function(_AuthSignInScreenState value)? signInScreen,
    TResult? Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult? Function(_AuthSuccessState value)? success,
    TResult? Function(_AuthFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitialState value)? initial,
    TResult Function(_AuthSignInScreenState value)? signInScreen,
    TResult Function(_AuthWaitingAnswerState value)? waitingAnswer,
    TResult Function(_AuthSuccessState value)? success,
    TResult Function(_AuthFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedState implements AuthState {
  const factory _AuthFailedState(final AuthError error) = _$AuthFailedStateImpl;

  AuthError get error;
  @JsonKey(ignore: true)
  _$$AuthFailedStateImplCopyWith<_$AuthFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
