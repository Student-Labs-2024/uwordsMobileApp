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
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithVK value)? signInWithVK,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(_RegisterUser value)? registerUser,
    TResult? Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithVK value)? signInWithVK,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_RegisterUser value)? registerUser,
    TResult Function(_SignInWithMailPassword value)? signInWithMailPassword,
    TResult Function(_LogOut value)? logOut,
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
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) {
    return signInWithVK();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) {
    return signInWithVK?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
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
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
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
  $Res call({String emailAddress, String password});
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
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl with DiagnosticableTreeMixin implements _RegisterUser {
  const _$RegisterUserImpl(
      {required this.emailAddress, required this.password});

  @override
  final String emailAddress;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registerUser(emailAddress: $emailAddress, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.registerUser'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
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
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithVK,
    required TResult Function() signInWithGoogle,
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) {
    return registerUser(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) {
    return registerUser?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(emailAddress, password);
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
      required final String password}) = _$RegisterUserImpl;

  String get emailAddress;
  String get password;
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
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) {
    return signInWithMailPassword(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) {
    return signInWithMailPassword?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
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
    required TResult Function(String emailAddress, String password)
        registerUser,
    required TResult Function(String emailAddress, String password)
        signInWithMailPassword,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithVK,
    TResult? Function()? signInWithGoogle,
    TResult? Function(String emailAddress, String password)? registerUser,
    TResult? Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithVK,
    TResult Function()? signInWithGoogle,
    TResult Function(String emailAddress, String password)? registerUser,
    TResult Function(String emailAddress, String password)?
        signInWithMailPassword,
    TResult Function()? logOut,
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
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waitingAnswer,
    required TResult Function() registred,
    required TResult Function() authorized,
    required TResult Function() failedSignIn,
    required TResult Function() failedRegisteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegisteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    required TResult Function() failedRegisteration,
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
    TResult? Function()? failedRegisteration,
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
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
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
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
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
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    required TResult Function() failedRegisteration,
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
    TResult? Function()? failedRegisteration,
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
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
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
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
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
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    required TResult Function() failedRegisteration,
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
    TResult? Function()? failedRegisteration,
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
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
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
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
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
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    required TResult Function() failedRegisteration,
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
    TResult? Function()? failedRegisteration,
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
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
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
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
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
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    required TResult Function() failedRegisteration,
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
    TResult? Function()? failedRegisteration,
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
    TResult Function()? failedRegisteration,
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
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
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
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
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
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
    return 'AuthState.failedRegisteration()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthState.failedRegisteration'));
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
    required TResult Function() failedRegisteration,
  }) {
    return failedRegisteration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waitingAnswer,
    TResult? Function()? registred,
    TResult? Function()? authorized,
    TResult? Function()? failedSignIn,
    TResult? Function()? failedRegisteration,
  }) {
    return failedRegisteration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waitingAnswer,
    TResult Function()? registred,
    TResult Function()? authorized,
    TResult Function()? failedSignIn,
    TResult Function()? failedRegisteration,
    required TResult orElse(),
  }) {
    if (failedRegisteration != null) {
      return failedRegisteration();
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
    required TResult Function(_AuthFailedRegistration value)
        failedRegisteration,
  }) {
    return failedRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult? Function(_AuthRegistered value)? registred,
    TResult? Function(_AuthAuthorised value)? authorized,
    TResult? Function(_AuthFailedSignIn value)? failedSignIn,
    TResult? Function(_AuthFailedRegistration value)? failedRegisteration,
  }) {
    return failedRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthWaitingAnswer value)? waitingAnswer,
    TResult Function(_AuthRegistered value)? registred,
    TResult Function(_AuthAuthorised value)? authorized,
    TResult Function(_AuthFailedSignIn value)? failedSignIn,
    TResult Function(_AuthFailedRegistration value)? failedRegisteration,
    required TResult orElse(),
  }) {
    if (failedRegisteration != null) {
      return failedRegisteration(this);
    }
    return orElse();
  }
}

abstract class _AuthFailedRegistration implements AuthState {
  const factory _AuthFailedRegistration() = _$AuthFailedRegistrationImpl;
}
