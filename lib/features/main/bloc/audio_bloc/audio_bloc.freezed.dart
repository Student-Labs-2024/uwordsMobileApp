// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res, AudioState>;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res, $Val extends AudioState>
    implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioInitialImplCopyWith<$Res> {
  factory _$$AudioInitialImplCopyWith(
          _$AudioInitialImpl value, $Res Function(_$AudioInitialImpl) then) =
      __$$AudioInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioInitialImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioInitialImpl>
    implements _$$AudioInitialImplCopyWith<$Res> {
  __$$AudioInitialImplCopyWithImpl(
      _$AudioInitialImpl _value, $Res Function(_$AudioInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioInitialImpl with DiagnosticableTreeMixin implements _AudioInitial {
  const _$AudioInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
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
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AudioInitial implements AudioState {
  const factory _AudioInitial() = _$AudioInitialImpl;
}

/// @nodoc
abstract class _$$AudioStartedImplCopyWith<$Res> {
  factory _$$AudioStartedImplCopyWith(
          _$AudioStartedImpl value, $Res Function(_$AudioStartedImpl) then) =
      __$$AudioStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioStartedImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioStartedImpl>
    implements _$$AudioStartedImplCopyWith<$Res> {
  __$$AudioStartedImplCopyWithImpl(
      _$AudioStartedImpl _value, $Res Function(_$AudioStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioStartedImpl with DiagnosticableTreeMixin implements _AudioStarted {
  const _$AudioStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _AudioStarted implements AudioState {
  const factory _AudioStarted() = _$AudioStartedImpl;
}

/// @nodoc
abstract class _$$AudioStoppedImplCopyWith<$Res> {
  factory _$$AudioStoppedImplCopyWith(
          _$AudioStoppedImpl value, $Res Function(_$AudioStoppedImpl) then) =
      __$$AudioStoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioStoppedImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioStoppedImpl>
    implements _$$AudioStoppedImplCopyWith<$Res> {
  __$$AudioStoppedImplCopyWithImpl(
      _$AudioStoppedImpl _value, $Res Function(_$AudioStoppedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioStoppedImpl with DiagnosticableTreeMixin implements _AudioStopped {
  const _$AudioStoppedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.stopped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.stopped'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioStoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _AudioStopped implements AudioState {
  const factory _AudioStopped() = _$AudioStoppedImpl;
}

/// @nodoc
abstract class _$$AudioFailedImplCopyWith<$Res> {
  factory _$$AudioFailedImplCopyWith(
          _$AudioFailedImpl value, $Res Function(_$AudioFailedImpl) then) =
      __$$AudioFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioFailedImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioFailedImpl>
    implements _$$AudioFailedImplCopyWith<$Res> {
  __$$AudioFailedImplCopyWithImpl(
      _$AudioFailedImpl _value, $Res Function(_$AudioFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioFailedImpl with DiagnosticableTreeMixin implements _AudioFailed {
  const _$AudioFailedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.failed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.failed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AudioFailed implements AudioState {
  const factory _AudioFailed() = _$AudioFailedImpl;
}

/// @nodoc
abstract class _$$AudioSendedImplCopyWith<$Res> {
  factory _$$AudioSendedImplCopyWith(
          _$AudioSendedImpl value, $Res Function(_$AudioSendedImpl) then) =
      __$$AudioSendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioSendedImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioSendedImpl>
    implements _$$AudioSendedImplCopyWith<$Res> {
  __$$AudioSendedImplCopyWithImpl(
      _$AudioSendedImpl _value, $Res Function(_$AudioSendedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioSendedImpl with DiagnosticableTreeMixin implements _AudioSended {
  const _$AudioSendedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.sended()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.sended'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioSendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return sended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return sended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
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
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _AudioSended implements AudioState {
  const factory _AudioSended() = _$AudioSendedImpl;
}

/// @nodoc
abstract class _$$AudioNotValidLinkImplCopyWith<$Res> {
  factory _$$AudioNotValidLinkImplCopyWith(_$AudioNotValidLinkImpl value,
          $Res Function(_$AudioNotValidLinkImpl) then) =
      __$$AudioNotValidLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioNotValidLinkImplCopyWithImpl<$Res>
    extends _$AudioStateCopyWithImpl<$Res, _$AudioNotValidLinkImpl>
    implements _$$AudioNotValidLinkImplCopyWith<$Res> {
  __$$AudioNotValidLinkImplCopyWithImpl(_$AudioNotValidLinkImpl _value,
      $Res Function(_$AudioNotValidLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioNotValidLinkImpl
    with DiagnosticableTreeMixin
    implements _AudioNotValidLink {
  const _$AudioNotValidLinkImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioState.notValidLink()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioState.notValidLink'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioNotValidLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function() failed,
    required TResult Function() sended,
    required TResult Function() notValidLink,
  }) {
    return notValidLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function()? failed,
    TResult? Function()? sended,
    TResult? Function()? notValidLink,
  }) {
    return notValidLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function()? failed,
    TResult Function()? sended,
    TResult Function()? notValidLink,
    required TResult orElse(),
  }) {
    if (notValidLink != null) {
      return notValidLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AudioInitial value) initial,
    required TResult Function(_AudioStarted value) started,
    required TResult Function(_AudioStopped value) stopped,
    required TResult Function(_AudioFailed value) failed,
    required TResult Function(_AudioSended value) sended,
    required TResult Function(_AudioNotValidLink value) notValidLink,
  }) {
    return notValidLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioInitial value)? initial,
    TResult? Function(_AudioStarted value)? started,
    TResult? Function(_AudioStopped value)? stopped,
    TResult? Function(_AudioFailed value)? failed,
    TResult? Function(_AudioSended value)? sended,
    TResult? Function(_AudioNotValidLink value)? notValidLink,
  }) {
    return notValidLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioInitial value)? initial,
    TResult Function(_AudioStarted value)? started,
    TResult Function(_AudioStopped value)? stopped,
    TResult Function(_AudioFailed value)? failed,
    TResult Function(_AudioSended value)? sended,
    TResult Function(_AudioNotValidLink value)? notValidLink,
    required TResult orElse(),
  }) {
    if (notValidLink != null) {
      return notValidLink(this);
    }
    return orElse();
  }
}

abstract class _AudioNotValidLink implements AudioState {
  const factory _AudioNotValidLink() = _$AudioNotValidLinkImpl;
}

/// @nodoc
mixin _$AudioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecord,
    required TResult Function() stopRecord,
    required TResult Function(String link) sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecord,
    TResult? Function()? stopRecord,
    TResult? Function(String link)? sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecord,
    TResult Function()? stopRecord,
    TResult Function(String link)? sendLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecord value) startRecord,
    required TResult Function(_StopRecord value) stopRecord,
    required TResult Function(_SendLink value) sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecord value)? startRecord,
    TResult? Function(_StopRecord value)? stopRecord,
    TResult? Function(_SendLink value)? sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecord value)? startRecord,
    TResult Function(_StopRecord value)? stopRecord,
    TResult Function(_SendLink value)? sendLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEventCopyWith<$Res> {
  factory $AudioEventCopyWith(
          AudioEvent value, $Res Function(AudioEvent) then) =
      _$AudioEventCopyWithImpl<$Res, AudioEvent>;
}

/// @nodoc
class _$AudioEventCopyWithImpl<$Res, $Val extends AudioEvent>
    implements $AudioEventCopyWith<$Res> {
  _$AudioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartRecordImplCopyWith<$Res> {
  factory _$$StartRecordImplCopyWith(
          _$StartRecordImpl value, $Res Function(_$StartRecordImpl) then) =
      __$$StartRecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartRecordImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$StartRecordImpl>
    implements _$$StartRecordImplCopyWith<$Res> {
  __$$StartRecordImplCopyWithImpl(
      _$StartRecordImpl _value, $Res Function(_$StartRecordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartRecordImpl with DiagnosticableTreeMixin implements _StartRecord {
  const _$StartRecordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioEvent.startRecord()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioEvent.startRecord'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartRecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecord,
    required TResult Function() stopRecord,
    required TResult Function(String link) sendLink,
  }) {
    return startRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecord,
    TResult? Function()? stopRecord,
    TResult? Function(String link)? sendLink,
  }) {
    return startRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecord,
    TResult Function()? stopRecord,
    TResult Function(String link)? sendLink,
    required TResult orElse(),
  }) {
    if (startRecord != null) {
      return startRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecord value) startRecord,
    required TResult Function(_StopRecord value) stopRecord,
    required TResult Function(_SendLink value) sendLink,
  }) {
    return startRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecord value)? startRecord,
    TResult? Function(_StopRecord value)? stopRecord,
    TResult? Function(_SendLink value)? sendLink,
  }) {
    return startRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecord value)? startRecord,
    TResult Function(_StopRecord value)? stopRecord,
    TResult Function(_SendLink value)? sendLink,
    required TResult orElse(),
  }) {
    if (startRecord != null) {
      return startRecord(this);
    }
    return orElse();
  }
}

abstract class _StartRecord implements AudioEvent {
  const factory _StartRecord() = _$StartRecordImpl;
}

/// @nodoc
abstract class _$$StopRecordImplCopyWith<$Res> {
  factory _$$StopRecordImplCopyWith(
          _$StopRecordImpl value, $Res Function(_$StopRecordImpl) then) =
      __$$StopRecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRecordImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$StopRecordImpl>
    implements _$$StopRecordImplCopyWith<$Res> {
  __$$StopRecordImplCopyWithImpl(
      _$StopRecordImpl _value, $Res Function(_$StopRecordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopRecordImpl with DiagnosticableTreeMixin implements _StopRecord {
  const _$StopRecordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioEvent.stopRecord()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AudioEvent.stopRecord'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopRecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecord,
    required TResult Function() stopRecord,
    required TResult Function(String link) sendLink,
  }) {
    return stopRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecord,
    TResult? Function()? stopRecord,
    TResult? Function(String link)? sendLink,
  }) {
    return stopRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecord,
    TResult Function()? stopRecord,
    TResult Function(String link)? sendLink,
    required TResult orElse(),
  }) {
    if (stopRecord != null) {
      return stopRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecord value) startRecord,
    required TResult Function(_StopRecord value) stopRecord,
    required TResult Function(_SendLink value) sendLink,
  }) {
    return stopRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecord value)? startRecord,
    TResult? Function(_StopRecord value)? stopRecord,
    TResult? Function(_SendLink value)? sendLink,
  }) {
    return stopRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecord value)? startRecord,
    TResult Function(_StopRecord value)? stopRecord,
    TResult Function(_SendLink value)? sendLink,
    required TResult orElse(),
  }) {
    if (stopRecord != null) {
      return stopRecord(this);
    }
    return orElse();
  }
}

abstract class _StopRecord implements AudioEvent {
  const factory _StopRecord() = _$StopRecordImpl;
}

/// @nodoc
abstract class _$$SendLinkImplCopyWith<$Res> {
  factory _$$SendLinkImplCopyWith(
          _$SendLinkImpl value, $Res Function(_$SendLinkImpl) then) =
      __$$SendLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$SendLinkImplCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res, _$SendLinkImpl>
    implements _$$SendLinkImplCopyWith<$Res> {
  __$$SendLinkImplCopyWithImpl(
      _$SendLinkImpl _value, $Res Function(_$SendLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$SendLinkImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendLinkImpl with DiagnosticableTreeMixin implements _SendLink {
  const _$SendLinkImpl(this.link);

  @override
  final String link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioEvent.sendLink(link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioEvent.sendLink'))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      __$$SendLinkImplCopyWithImpl<_$SendLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecord,
    required TResult Function() stopRecord,
    required TResult Function(String link) sendLink,
  }) {
    return sendLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecord,
    TResult? Function()? stopRecord,
    TResult? Function(String link)? sendLink,
  }) {
    return sendLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecord,
    TResult Function()? stopRecord,
    TResult Function(String link)? sendLink,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecord value) startRecord,
    required TResult Function(_StopRecord value) stopRecord,
    required TResult Function(_SendLink value) sendLink,
  }) {
    return sendLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecord value)? startRecord,
    TResult? Function(_StopRecord value)? stopRecord,
    TResult? Function(_SendLink value)? sendLink,
  }) {
    return sendLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecord value)? startRecord,
    TResult Function(_StopRecord value)? stopRecord,
    TResult Function(_SendLink value)? sendLink,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(this);
    }
    return orElse();
  }
}

abstract class _SendLink implements AudioEvent {
  const factory _SendLink(final String link) = _$SendLinkImpl;

  String get link;
  @JsonKey(ignore: true)
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
