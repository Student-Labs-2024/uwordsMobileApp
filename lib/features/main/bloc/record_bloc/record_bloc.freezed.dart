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
    required TResult Function(_RecordInitialSate value) initial,
    required TResult Function(_RecordFailedState value) failed,
    required TResult Function(_RecordSendedState value) sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitialSate value)? initial,
    TResult? Function(_RecordFailedState value)? failed,
    TResult? Function(_RecordSendedState value)? sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitialSate value)? initial,
    TResult Function(_RecordFailedState value)? failed,
    TResult Function(_RecordSendedState value)? sended,
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
abstract class _$$RecordInitialSateImplCopyWith<$Res> {
  factory _$$RecordInitialSateImplCopyWith(_$RecordInitialSateImpl value,
          $Res Function(_$RecordInitialSateImpl) then) =
      __$$RecordInitialSateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordInitialSateImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordInitialSateImpl>
    implements _$$RecordInitialSateImplCopyWith<$Res> {
  __$$RecordInitialSateImplCopyWithImpl(_$RecordInitialSateImpl _value,
      $Res Function(_$RecordInitialSateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordInitialSateImpl
    with DiagnosticableTreeMixin
    implements _RecordInitialSate {
  const _$RecordInitialSateImpl();

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
        (other.runtimeType == runtimeType && other is _$RecordInitialSateImpl);
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
    required TResult Function(_RecordInitialSate value) initial,
    required TResult Function(_RecordFailedState value) failed,
    required TResult Function(_RecordSendedState value) sended,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitialSate value)? initial,
    TResult? Function(_RecordFailedState value)? failed,
    TResult? Function(_RecordSendedState value)? sended,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitialSate value)? initial,
    TResult Function(_RecordFailedState value)? failed,
    TResult Function(_RecordSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecordInitialSate implements RecordState {
  const factory _RecordInitialSate() = _$RecordInitialSateImpl;
}

/// @nodoc
abstract class _$$RecordFailedStateImplCopyWith<$Res> {
  factory _$$RecordFailedStateImplCopyWith(_$RecordFailedStateImpl value,
          $Res Function(_$RecordFailedStateImpl) then) =
      __$$RecordFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecordFailedStateImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordFailedStateImpl>
    implements _$$RecordFailedStateImplCopyWith<$Res> {
  __$$RecordFailedStateImplCopyWithImpl(_$RecordFailedStateImpl _value,
      $Res Function(_$RecordFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecordFailedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordFailedStateImpl
    with DiagnosticableTreeMixin
    implements _RecordFailedState {
  const _$RecordFailedStateImpl(this.message);

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
            other is _$RecordFailedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordFailedStateImplCopyWith<_$RecordFailedStateImpl> get copyWith =>
      __$$RecordFailedStateImplCopyWithImpl<_$RecordFailedStateImpl>(
          this, _$identity);

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
    required TResult Function(_RecordInitialSate value) initial,
    required TResult Function(_RecordFailedState value) failed,
    required TResult Function(_RecordSendedState value) sended,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitialSate value)? initial,
    TResult? Function(_RecordFailedState value)? failed,
    TResult? Function(_RecordSendedState value)? sended,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitialSate value)? initial,
    TResult Function(_RecordFailedState value)? failed,
    TResult Function(_RecordSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _RecordFailedState implements RecordState {
  const factory _RecordFailedState(final String message) =
      _$RecordFailedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RecordFailedStateImplCopyWith<_$RecordFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordSendedStateImplCopyWith<$Res> {
  factory _$$RecordSendedStateImplCopyWith(_$RecordSendedStateImpl value,
          $Res Function(_$RecordSendedStateImpl) then) =
      __$$RecordSendedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordSendedStateImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordSendedStateImpl>
    implements _$$RecordSendedStateImplCopyWith<$Res> {
  __$$RecordSendedStateImplCopyWithImpl(_$RecordSendedStateImpl _value,
      $Res Function(_$RecordSendedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordSendedStateImpl
    with DiagnosticableTreeMixin
    implements _RecordSendedState {
  const _$RecordSendedStateImpl();

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
        (other.runtimeType == runtimeType && other is _$RecordSendedStateImpl);
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
    required TResult Function(_RecordInitialSate value) initial,
    required TResult Function(_RecordFailedState value) failed,
    required TResult Function(_RecordSendedState value) sended,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecordInitialSate value)? initial,
    TResult? Function(_RecordFailedState value)? failed,
    TResult? Function(_RecordSendedState value)? sended,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecordInitialSate value)? initial,
    TResult Function(_RecordFailedState value)? failed,
    TResult Function(_RecordSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _RecordSendedState implements RecordState {
  const factory _RecordSendedState() = _$RecordSendedStateImpl;
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
    required TResult Function(_SendErrorEvent value) sendError,
    required TResult Function(_SendPathEvent value) sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendErrorEvent value)? sendError,
    TResult? Function(_SendPathEvent value)? sendPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendErrorEvent value)? sendError,
    TResult Function(_SendPathEvent value)? sendPath,
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
abstract class _$$SendErrorEventImplCopyWith<$Res> {
  factory _$$SendErrorEventImplCopyWith(_$SendErrorEventImpl value,
          $Res Function(_$SendErrorEventImpl) then) =
      __$$SendErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendErrorEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$SendErrorEventImpl>
    implements _$$SendErrorEventImplCopyWith<$Res> {
  __$$SendErrorEventImplCopyWithImpl(
      _$SendErrorEventImpl _value, $Res Function(_$SendErrorEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendErrorEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendErrorEventImpl
    with DiagnosticableTreeMixin
    implements _SendErrorEvent {
  const _$SendErrorEventImpl(this.message);

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
            other is _$SendErrorEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendErrorEventImplCopyWith<_$SendErrorEventImpl> get copyWith =>
      __$$SendErrorEventImplCopyWithImpl<_$SendErrorEventImpl>(
          this, _$identity);

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
    required TResult Function(_SendErrorEvent value) sendError,
    required TResult Function(_SendPathEvent value) sendPath,
  }) {
    return sendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendErrorEvent value)? sendError,
    TResult? Function(_SendPathEvent value)? sendPath,
  }) {
    return sendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendErrorEvent value)? sendError,
    TResult Function(_SendPathEvent value)? sendPath,
    required TResult orElse(),
  }) {
    if (sendError != null) {
      return sendError(this);
    }
    return orElse();
  }
}

abstract class _SendErrorEvent implements RecordEvent {
  const factory _SendErrorEvent(final String message) = _$SendErrorEventImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SendErrorEventImplCopyWith<_$SendErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPathEventImplCopyWith<$Res> {
  factory _$$SendPathEventImplCopyWith(
          _$SendPathEventImpl value, $Res Function(_$SendPathEventImpl) then) =
      __$$SendPathEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SendPathEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$SendPathEventImpl>
    implements _$$SendPathEventImplCopyWith<$Res> {
  __$$SendPathEventImplCopyWithImpl(
      _$SendPathEventImpl _value, $Res Function(_$SendPathEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SendPathEventImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPathEventImpl
    with DiagnosticableTreeMixin
    implements _SendPathEvent {
  const _$SendPathEventImpl(this.path);

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
            other is _$SendPathEventImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPathEventImplCopyWith<_$SendPathEventImpl> get copyWith =>
      __$$SendPathEventImplCopyWithImpl<_$SendPathEventImpl>(this, _$identity);

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
    required TResult Function(_SendErrorEvent value) sendError,
    required TResult Function(_SendPathEvent value) sendPath,
  }) {
    return sendPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendErrorEvent value)? sendError,
    TResult? Function(_SendPathEvent value)? sendPath,
  }) {
    return sendPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendErrorEvent value)? sendError,
    TResult Function(_SendPathEvent value)? sendPath,
    required TResult orElse(),
  }) {
    if (sendPath != null) {
      return sendPath(this);
    }
    return orElse();
  }
}

abstract class _SendPathEvent implements RecordEvent {
  const factory _SendPathEvent(final String path) = _$SendPathEventImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$SendPathEventImplCopyWith<_$SendPathEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
