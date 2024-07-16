// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function() sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function()? sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function()? sended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordInitial value) initial,
    required TResult Function(_RecordFailed value) failed,
    required TResult Function(_RecordSended value) sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitial value)? initial,
    TResult? Function(_RecordFailed value)? failed,
    TResult? Function(_RecordSended value)? sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitial value)? initial,
    TResult Function(_RecordFailed value)? failed,
    TResult Function(_RecordSended value)? sended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res, RecordState>;
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res, $Val extends RecordState>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecordInitialImplCopyWith<$Res> {
  factory _$$RecordInitialImplCopyWith(
          _$RecordInitialImpl value, $Res Function(_$RecordInitialImpl) then) =
      __$$RecordInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordInitialImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordInitialImpl>
    implements _$$RecordInitialImplCopyWith<$Res> {
  __$$RecordInitialImplCopyWithImpl(
      _$RecordInitialImpl _value, $Res Function(_$RecordInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordInitialImpl
    with DiagnosticableTreeMixin
    implements _RecordInitial {
  const _$RecordInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function() sended,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function()? sended,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function()? sended,
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
    required TResult Function(_RecordInitial value) initial,
    required TResult Function(_RecordFailed value) failed,
    required TResult Function(_RecordSended value) sended,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitial value)? initial,
    TResult? Function(_RecordFailed value)? failed,
    TResult? Function(_RecordSended value)? sended,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitial value)? initial,
    TResult Function(_RecordFailed value)? failed,
    TResult Function(_RecordSended value)? sended,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecordInitial implements RecordState {
  const factory _RecordInitial() = _$RecordInitialImpl;
}

/// @nodoc
abstract class _$$RecordFailedImplCopyWith<$Res> {
  factory _$$RecordFailedImplCopyWith(
          _$RecordFailedImpl value, $Res Function(_$RecordFailedImpl) then) =
      __$$RecordFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecordFailedImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordFailedImpl>
    implements _$$RecordFailedImplCopyWith<$Res> {
  __$$RecordFailedImplCopyWithImpl(
      _$RecordFailedImpl _value, $Res Function(_$RecordFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecordFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordFailedImpl with DiagnosticableTreeMixin implements _RecordFailed {
  const _$RecordFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordState.failed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordState.failed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordFailedImplCopyWith<_$RecordFailedImpl> get copyWith =>
      __$$RecordFailedImplCopyWithImpl<_$RecordFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function() sended,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function()? sended,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function()? sended,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordInitial value) initial,
    required TResult Function(_RecordFailed value) failed,
    required TResult Function(_RecordSended value) sended,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitial value)? initial,
    TResult? Function(_RecordFailed value)? failed,
    TResult? Function(_RecordSended value)? sended,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitial value)? initial,
    TResult Function(_RecordFailed value)? failed,
    TResult Function(_RecordSended value)? sended,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _RecordFailed implements RecordState {
  const factory _RecordFailed(final String message) = _$RecordFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RecordFailedImplCopyWith<_$RecordFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordSendedImplCopyWith<$Res> {
  factory _$$RecordSendedImplCopyWith(
          _$RecordSendedImpl value, $Res Function(_$RecordSendedImpl) then) =
      __$$RecordSendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordSendedImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordSendedImpl>
    implements _$$RecordSendedImplCopyWith<$Res> {
  __$$RecordSendedImplCopyWithImpl(
      _$RecordSendedImpl _value, $Res Function(_$RecordSendedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordSendedImpl with DiagnosticableTreeMixin implements _RecordSended {
  const _$RecordSendedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordState.sended()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordState.sended'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordSendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function() sended,
  }) {
    return sended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function()? sended,
  }) {
    return sended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function()? sended,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecordInitial value) initial,
    required TResult Function(_RecordFailed value) failed,
    required TResult Function(_RecordSended value) sended,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitial value)? initial,
    TResult? Function(_RecordFailed value)? failed,
    TResult? Function(_RecordSended value)? sended,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitial value)? initial,
    TResult Function(_RecordFailed value)? failed,
    TResult Function(_RecordSended value)? sended,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _RecordSended implements RecordState {
  const factory _RecordSended() = _$RecordSendedImpl;
}

/// @nodoc
mixin _$RecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendError,
    required TResult Function(String path) sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendError,
    TResult? Function(String path)? sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendError,
    TResult Function(String path)? sendPath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendError value) sendError,
    required TResult Function(_SendPath value) sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendError value)? sendError,
    TResult? Function(_SendPath value)? sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendError value)? sendError,
    TResult Function(_SendPath value)? sendPath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordEventCopyWith<$Res> {
  factory $RecordEventCopyWith(
          RecordEvent value, $Res Function(RecordEvent) then) =
      _$RecordEventCopyWithImpl<$Res, RecordEvent>;
}

/// @nodoc
class _$RecordEventCopyWithImpl<$Res, $Val extends RecordEvent>
    implements $RecordEventCopyWith<$Res> {
  _$RecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendErrorImplCopyWith<$Res> {
  factory _$$SendErrorImplCopyWith(
          _$SendErrorImpl value, $Res Function(_$SendErrorImpl) then) =
      __$$SendErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendErrorImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$SendErrorImpl>
    implements _$$SendErrorImplCopyWith<$Res> {
  __$$SendErrorImplCopyWithImpl(
      _$SendErrorImpl _value, $Res Function(_$SendErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendErrorImpl with DiagnosticableTreeMixin implements _SendError {
  const _$SendErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordEvent.sendError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordEvent.sendError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendErrorImplCopyWith<_$SendErrorImpl> get copyWith =>
      __$$SendErrorImplCopyWithImpl<_$SendErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendError,
    required TResult Function(String path) sendPath,
  }) {
    return sendError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendError,
    TResult? Function(String path)? sendPath,
  }) {
    return sendError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendError,
    TResult Function(String path)? sendPath,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendError value) sendError,
    required TResult Function(_SendPath value) sendPath,
  }) {
    return sendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendError value)? sendError,
    TResult? Function(_SendPath value)? sendPath,
  }) {
    return sendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendError value)? sendError,
    TResult Function(_SendPath value)? sendPath,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(this);
    }
    return orElse();
  }
}

abstract class _SendError implements RecordEvent {
  const factory _SendError(final String message) = _$SendErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SendErrorImplCopyWith<_$SendErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPathImplCopyWith<$Res> {
  factory _$$SendPathImplCopyWith(
          _$SendPathImpl value, $Res Function(_$SendPathImpl) then) =
      __$$SendPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SendPathImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$SendPathImpl>
    implements _$$SendPathImplCopyWith<$Res> {
  __$$SendPathImplCopyWithImpl(
      _$SendPathImpl _value, $Res Function(_$SendPathImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SendPathImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPathImpl with DiagnosticableTreeMixin implements _SendPath {
  const _$SendPathImpl(this.path);

  @override
  final String path;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordEvent.sendPath(path: $path)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordEvent.sendPath'))
      ..add(DiagnosticsProperty('path', path));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPathImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPathImplCopyWith<_$SendPathImpl> get copyWith =>
      __$$SendPathImplCopyWithImpl<_$SendPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) sendError,
    required TResult Function(String path) sendPath,
  }) {
    return sendPath(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? sendError,
    TResult? Function(String path)? sendPath,
  }) {
    return sendPath?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? sendError,
    TResult Function(String path)? sendPath,
    required TResult orElse(),
  }) {
    if (sendPath != null) {
      return sendPath(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendError value) sendError,
    required TResult Function(_SendPath value) sendPath,
  }) {
    return sendPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendError value)? sendError,
    TResult? Function(_SendPath value)? sendPath,
  }) {
    return sendPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendError value)? sendError,
    TResult Function(_SendPath value)? sendPath,
    required TResult orElse(),
  }) {
    if (sendPath != null) {
      return sendPath(this);
    }
    return orElse();
  }
}

abstract class _SendPath implements RecordEvent {
  const factory _SendPath(final String path) = _$SendPathImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$SendPathImplCopyWith<_$SendPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
