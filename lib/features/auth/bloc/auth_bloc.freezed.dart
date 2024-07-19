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
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
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
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return signInWithVK();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return signInWithVK?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
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
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return signInWithVK(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return signInWithVK?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
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
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
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
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
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
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailAddress, String password, DateTime birthDate});
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
    Object? emailAddress = null,
    Object? password = null,
    Object? birthDate = null,
  }) {
    return _then(_$RegisterUserImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl with DiagnosticableTreeMixin implements _RegisterUser {
  const _$RegisterUserImpl(
      {required this.emailAddress,
      required this.password,
      required this.birthDate});

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final DateTime birthDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registerUser(emailAddress: $emailAddress, password: $password, birthDate: $birthDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.registerUser'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('birthDate', birthDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emailAddress, password, birthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return registerUser(emailAddress, password, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return registerUser?.call(emailAddress, password, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(emailAddress, password, birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _RegisterUser implements AuthEvent {
  const factory _RegisterUser(
      {required final String emailAddress,
      required final String password,
      required final DateTime birthDate}) = _$RegisterUserImpl;

  String get emailAddress;
  String get password;
  DateTime get birthDate;
  @JsonKey(ignore: true)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return signInWithMailPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return signInWithMailPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
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
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return signInWithMailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return signInWithMailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
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
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
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
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
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
abstract class _$$RequestCodeImplCopyWith<$Res> {
  factory _$$RequestCodeImplCopyWith(
          _$RequestCodeImpl value, $Res Function(_$RequestCodeImpl) then) =
      __$$RequestCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
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
    Object? email = null,
  }) {
    return _then(_$RequestCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestCodeImpl with DiagnosticableTreeMixin implements _RequestCode {
  const _$RequestCodeImpl({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.requestCode(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.requestCode'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCodeImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCodeImplCopyWith<_$RequestCodeImpl> get copyWith =>
      __$$RequestCodeImplCopyWithImpl<_$RequestCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return requestCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return requestCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class _RequestCode implements AuthEvent {
  const factory _RequestCode({required final String email}) = _$RequestCodeImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$RequestCodeImplCopyWith<_$RequestCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckCodeImplCopyWith<$Res> {
  factory _$$CheckCodeImplCopyWith(
          _$CheckCodeImpl value, $Res Function(_$CheckCodeImpl) then) =
      __$$CheckCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$CheckCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckCodeImpl>
    implements _$$CheckCodeImplCopyWith<$Res> {
  __$$CheckCodeImplCopyWithImpl(
      _$CheckCodeImpl _value, $Res Function(_$CheckCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$CheckCodeImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckCodeImpl with DiagnosticableTreeMixin implements _CheckCode {
  const _$CheckCodeImpl({required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkCode(email: $email, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.checkCode'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCodeImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCodeImplCopyWith<_$CheckCodeImpl> get copyWith =>
      __$$CheckCodeImplCopyWithImpl<_$CheckCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(
            String emailAddress, String password, DateTime birthDate)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
    required TResult Function(String email) requestCode,
    required TResult Function(String email, String code) checkCode,
  }) {
    return checkCode(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
    TResult? Function(String email)? requestCode,
    TResult? Function(String email, String code)? checkCode,
  }) {
    return checkCode?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password, DateTime birthDate)?
        registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    TResult Function(String email)? requestCode,
    TResult Function(String email, String code)? checkCode,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithVK value) signInWithVK,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_RegisterUser value) registerUser,
    required TResult Function(_SignInWithMailPassword value)
        signInWithMailPassword,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_RequestCode value) requestCode,
    required TResult Function(_CheckCode value) checkCode,
  }) {
    return checkCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_RequestCode value)? requestCode,
    TResult? Function(_CheckCode value)? checkCode,
  }) {
    return checkCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_RequestCode value)? requestCode,
    TResult Function(_CheckCode value)? checkCode,
    required TResult orElse(),
  }) {
    if (checkCode != null) {
      return checkCode(this);
    }
    return orElse();
  }
}

abstract class _CheckCode implements AuthEvent {
  const factory _CheckCode(
      {required final String email,
      required final String code}) = _$CheckCodeImpl;

  String get email;
  String get code;
  @JsonKey(ignore: true)
  _$$CheckCodeImplCopyWith<_$CheckCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
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
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
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
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
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
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return waitingAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return waitingAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
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
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return waitingAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return waitingAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
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
abstract class _$$AuthRegisteredImplCopyWith<$Res> {
  factory _$$AuthRegisteredImplCopyWith(_$AuthRegisteredImpl value,
          $Res Function(_$AuthRegisteredImpl) then) =
      __$$AuthRegisteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthRegisteredImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthRegisteredImpl>
    implements _$$AuthRegisteredImplCopyWith<$Res> {
  __$$AuthRegisteredImplCopyWithImpl(
      _$AuthRegisteredImpl _value, $Res Function(_$AuthRegisteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthRegisteredImpl
    with DiagnosticableTreeMixin
    implements _AuthRegistered {
  const _$AuthRegisteredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registred()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.registred'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthRegisteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return registred();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return registred?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (registred != null) {
      return registred();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return registred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return registred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (registred != null) {
      return registred(this);
    }
    return orElse();
  }
}

abstract class _AuthRegistered implements AuthState {
  const factory _AuthRegistered() = _$AuthRegisteredImpl;
}

/// @nodoc
abstract class _$$AuthAuthorisedImplCopyWith<$Res> {
  factory _$$AuthAuthorisedImplCopyWith(_$AuthAuthorisedImpl value,
          $Res Function(_$AuthAuthorisedImpl) then) =
      __$$AuthAuthorisedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAuthorisedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthorisedImpl>
    implements _$$AuthAuthorisedImplCopyWith<$Res> {
  __$$AuthAuthorisedImplCopyWithImpl(
      _$AuthAuthorisedImpl _value, $Res Function(_$AuthAuthorisedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthAuthorisedImpl
    with DiagnosticableTreeMixin
    implements _AuthAuthorised {
  const _$AuthAuthorisedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.authorized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthAuthorisedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthorised implements AuthState {
  const factory _AuthAuthorised() = _$AuthAuthorisedImpl;
}

/// @nodoc
abstract class _$$AuthFailedSignInImplCopyWith<$Res> {
  factory _$$AuthFailedSignInImplCopyWith(_$AuthFailedSignInImpl value,
          $Res Function(_$AuthFailedSignInImpl) then) =
      __$$AuthFailedSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFailedSignInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedSignInImpl>
    implements _$$AuthFailedSignInImplCopyWith<$Res> {
  __$$AuthFailedSignInImplCopyWithImpl(_$AuthFailedSignInImpl _value,
      $Res Function(_$AuthFailedSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthFailedSignInImpl
    with DiagnosticableTreeMixin
    implements _AuthFailedSignIn {
  const _$AuthFailedSignInImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.failedSignIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.failedSignIn'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthFailedSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return failedSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return failedSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedSignIn != null) {
      return failedSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return failedSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return failedSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedSignIn != null) {
      return failedSignIn(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedSignIn implements AuthState {
  const factory _AuthFailedSignIn() = _$AuthFailedSignInImpl;
}

/// @nodoc
abstract class _$$AuthFailedRegistrationImplCopyWith<$Res> {
  factory _$$AuthFailedRegistrationImplCopyWith(
          _$AuthFailedRegistrationImpl value,
          $Res Function(_$AuthFailedRegistrationImpl) then) =
      __$$AuthFailedRegistrationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFailedRegistrationImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedRegistrationImpl>
    implements _$$AuthFailedRegistrationImplCopyWith<$Res> {
  __$$AuthFailedRegistrationImplCopyWithImpl(
      _$AuthFailedRegistrationImpl _value,
      $Res Function(_$AuthFailedRegistrationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthFailedRegistrationImpl
    with DiagnosticableTreeMixin
    implements _AuthFailedRegistration {
  const _$AuthFailedRegistrationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.failedRegistration()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.failedRegistration'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedRegistrationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return failedRegistration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return failedRegistration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedRegistration != null) {
      return failedRegistration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return failedRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return failedRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedRegistration != null) {
      return failedRegistration(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedRegistration implements AuthState {
  const factory _AuthFailedRegistration() = _$AuthFailedRegistrationImpl;
}

/// @nodoc
abstract class _$$AuthNotValidMailImplCopyWith<$Res> {
  factory _$$AuthNotValidMailImplCopyWith(_$AuthNotValidMailImpl value,
          $Res Function(_$AuthNotValidMailImpl) then) =
      __$$AuthNotValidMailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthNotValidMailImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthNotValidMailImpl>
    implements _$$AuthNotValidMailImplCopyWith<$Res> {
  __$$AuthNotValidMailImplCopyWithImpl(_$AuthNotValidMailImpl _value,
      $Res Function(_$AuthNotValidMailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthNotValidMailImpl
    with DiagnosticableTreeMixin
    implements _AuthNotValidMail {
  const _$AuthNotValidMailImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.notValidMail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.notValidMail'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthNotValidMailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return notValidMail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return notValidMail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (notValidMail != null) {
      return notValidMail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return notValidMail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return notValidMail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (notValidMail != null) {
      return notValidMail(this);
    }
    return orElse();
  }
}

abstract class _AuthNotValidMail implements AuthState {
  const factory _AuthNotValidMail() = _$AuthNotValidMailImpl;
}

/// @nodoc
abstract class _$$AuthFailedAuthorizationImplCopyWith<$Res> {
  factory _$$AuthFailedAuthorizationImplCopyWith(
          _$AuthFailedAuthorizationImpl value,
          $Res Function(_$AuthFailedAuthorizationImpl) then) =
      __$$AuthFailedAuthorizationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthFailedAuthorizationImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailedAuthorizationImpl>
    implements _$$AuthFailedAuthorizationImplCopyWith<$Res> {
  __$$AuthFailedAuthorizationImplCopyWithImpl(
      _$AuthFailedAuthorizationImpl _value,
      $Res Function(_$AuthFailedAuthorizationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthFailedAuthorizationImpl
    with DiagnosticableTreeMixin
    implements _AuthFailedAuthorization {
  const _$AuthFailedAuthorizationImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.failedAutorization()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.failedAutorization'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedAuthorizationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return failedAutorization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return failedAutorization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedAutorization != null) {
      return failedAutorization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return failedAutorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return failedAutorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (failedAutorization != null) {
      return failedAutorization(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedAuthorization implements AuthState {
  const factory _AuthFailedAuthorization() = _$AuthFailedAuthorizationImpl;
}

/// @nodoc
abstract class _$$AuthBadPasswordImplCopyWith<$Res> {
  factory _$$AuthBadPasswordImplCopyWith(_$AuthBadPasswordImpl value,
          $Res Function(_$AuthBadPasswordImpl) then) =
      __$$AuthBadPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthBadPasswordImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthBadPasswordImpl>
    implements _$$AuthBadPasswordImplCopyWith<$Res> {
  __$$AuthBadPasswordImplCopyWithImpl(
      _$AuthBadPasswordImpl _value, $Res Function(_$AuthBadPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthBadPasswordImpl
    with DiagnosticableTreeMixin
    implements _AuthBadPassword {
  const _$AuthBadPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.badPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.badPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthBadPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return badPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return badPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (badPassword != null) {
      return badPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return badPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return badPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (badPassword != null) {
      return badPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthBadPassword implements AuthState {
  const factory _AuthBadPassword() = _$AuthBadPasswordImpl;
}

/// @nodoc
abstract class _$$AuthUnknownErrorImplCopyWith<$Res> {
  factory _$$AuthUnknownErrorImplCopyWith(_$AuthUnknownErrorImpl value,
          $Res Function(_$AuthUnknownErrorImpl) then) =
      __$$AuthUnknownErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnknownErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnknownErrorImpl>
    implements _$$AuthUnknownErrorImplCopyWith<$Res> {
  __$$AuthUnknownErrorImplCopyWithImpl(_$AuthUnknownErrorImpl _value,
      $Res Function(_$AuthUnknownErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnknownErrorImpl
    with DiagnosticableTreeMixin
    implements _AuthUnknownError {
  const _$AuthUnknownErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unknownError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.unknownError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUnknownErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _AuthUnknownError implements AuthState {
  const factory _AuthUnknownError() = _$AuthUnknownErrorImpl;
}

/// @nodoc
abstract class _$$AuthSendedCodeImplCopyWith<$Res> {
  factory _$$AuthSendedCodeImplCopyWith(_$AuthSendedCodeImpl value,
          $Res Function(_$AuthSendedCodeImpl) then) =
      __$$AuthSendedCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSendedCodeImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSendedCodeImpl>
    implements _$$AuthSendedCodeImplCopyWith<$Res> {
  __$$AuthSendedCodeImplCopyWithImpl(
      _$AuthSendedCodeImpl _value, $Res Function(_$AuthSendedCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSendedCodeImpl
    with DiagnosticableTreeMixin
    implements _AuthSendedCode {
  const _$AuthSendedCodeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.sendedCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.sendedCode'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSendedCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return sendedCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return sendedCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (sendedCode != null) {
      return sendedCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return sendedCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return sendedCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (sendedCode != null) {
      return sendedCode(this);
    }
    return orElse();
  }
}

abstract class _AuthSendedCode implements AuthState {
  const factory _AuthSendedCode() = _$AuthSendedCodeImpl;
}

/// @nodoc
abstract class _$$AuthRegiserCheckingEmailImplCopyWith<$Res> {
  factory _$$AuthRegiserCheckingEmailImplCopyWith(
          _$AuthRegiserCheckingEmailImpl value,
          $Res Function(_$AuthRegiserCheckingEmailImpl) then) =
      __$$AuthRegiserCheckingEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthRegiserCheckingEmailImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthRegiserCheckingEmailImpl>
    implements _$$AuthRegiserCheckingEmailImplCopyWith<$Res> {
  __$$AuthRegiserCheckingEmailImplCopyWithImpl(
      _$AuthRegiserCheckingEmailImpl _value,
      $Res Function(_$AuthRegiserCheckingEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthRegiserCheckingEmailImpl
    with DiagnosticableTreeMixin
    implements _AuthRegiserCheckingEmail {
  const _$AuthRegiserCheckingEmailImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.registerCheckingEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.registerCheckingEmail'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegiserCheckingEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return registerCheckingEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return registerCheckingEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (registerCheckingEmail != null) {
      return registerCheckingEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return registerCheckingEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return registerCheckingEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (registerCheckingEmail != null) {
      return registerCheckingEmail(this);
    }
    return orElse();
  }
}

abstract class _AuthRegiserCheckingEmail implements AuthState {
  const factory _AuthRegiserCheckingEmail() = _$AuthRegiserCheckingEmailImpl;
}

/// @nodoc
abstract class _$$AuthVerifiedEmailImplCopyWith<$Res> {
  factory _$$AuthVerifiedEmailImplCopyWith(_$AuthVerifiedEmailImpl value,
          $Res Function(_$AuthVerifiedEmailImpl) then) =
      __$$AuthVerifiedEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthVerifiedEmailImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthVerifiedEmailImpl>
    implements _$$AuthVerifiedEmailImplCopyWith<$Res> {
  __$$AuthVerifiedEmailImplCopyWithImpl(_$AuthVerifiedEmailImpl _value,
      $Res Function(_$AuthVerifiedEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthVerifiedEmailImpl
    with DiagnosticableTreeMixin
    implements _AuthVerifiedEmail {
  const _$AuthVerifiedEmailImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.verifiedEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.verifiedEmail'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthVerifiedEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegistration,
    required TResult Function() notValidMail,
    required TResult Function() failedAutorization,
    required TResult Function() badPassword,
    required TResult Function() unknownError,
    required TResult Function() sendedCode,
    required TResult Function() registerCheckingEmail,
    required TResult Function() verifiedEmail,
  }) {
    return verifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegistration,
    TResult? Function()? notValidMail,
    TResult? Function()? failedAutorization,
    TResult? Function()? badPassword,
    TResult? Function()? unknownError,
    TResult? Function()? sendedCode,
    TResult? Function()? registerCheckingEmail,
    TResult? Function()? verifiedEmail,
  }) {
    return verifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegistration,
    TResult Function()? notValidMail,
    TResult Function()? failedAutorization,
    TResult Function()? badPassword,
    TResult Function()? unknownError,
    TResult Function()? sendedCode,
    TResult Function()? registerCheckingEmail,
    TResult Function()? verifiedEmail,
    required TResult orElse(),
  }) {
    if (verifiedEmail != null) {
      return verifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthWaitingAnswer value) waitingAnswer,
    required TResult Function(_AuthRegistered value) registred,
    required TResult Function(_AuthAuthorised value) authorized,
    required TResult Function(_AuthFailedSignIn value) failedSignIn,
    required TResult Function(_AuthFailedRegistration value) failedRegistration,
    required TResult Function(_AuthNotValidMail value) notValidMail,
    required TResult Function(_AuthFailedAuthorization value)
        failedAutorization,
    required TResult Function(_AuthBadPassword value) badPassword,
    required TResult Function(_AuthUnknownError value) unknownError,
    required TResult Function(_AuthSendedCode value) sendedCode,
    required TResult Function(_AuthRegiserCheckingEmail value)
        registerCheckingEmail,
    required TResult Function(_AuthVerifiedEmail value) verifiedEmail,
  }) {
    return verifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegistration,
    TResult? Function(_AuthNotValidMail value)? notValidMail,
    TResult? Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult? Function(_AuthBadPassword value)? badPassword,
    TResult? Function(_AuthUnknownError value)? unknownError,
    TResult? Function(_AuthSendedCode value)? sendedCode,
    TResult? Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult? Function(_AuthVerifiedEmail value)? verifiedEmail,
  }) {
    return verifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegistration,
    TResult Function(_AuthNotValidMail value)? notValidMail,
    TResult Function(_AuthFailedAuthorization value)? failedAutorization,
    TResult Function(_AuthBadPassword value)? badPassword,
    TResult Function(_AuthUnknownError value)? unknownError,
    TResult Function(_AuthSendedCode value)? sendedCode,
    TResult Function(_AuthRegiserCheckingEmail value)? registerCheckingEmail,
    TResult Function(_AuthVerifiedEmail value)? verifiedEmail,
    required TResult orElse(),
  }) {
    if (verifiedEmail != null) {
      return verifiedEmail(this);
    }
    return orElse();
  }
}

abstract class _AuthVerifiedEmail implements AuthState {
  const factory _AuthVerifiedEmail() = _$AuthVerifiedEmailImpl;
}
