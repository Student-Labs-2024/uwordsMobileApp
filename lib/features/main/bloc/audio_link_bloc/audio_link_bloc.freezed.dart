// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioLinkState {
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
    required TResult Function(_AudioLinkInitialState value) initial,
    required TResult Function(_AudioLinkFailedState value) failed,
    required TResult Function(_AudioLinkSendedState value) sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitialState value)? initial,
    TResult? Function(_AudioLinkFailedState value)? failed,
    TResult? Function(_AudioLinkSendedState value)? sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitialState value)? initial,
    TResult Function(_AudioLinkFailedState value)? failed,
    TResult Function(_AudioLinkSendedState value)? sended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioLinkStateCopyWith<$Res> {
  factory $AudioLinkStateCopyWith(
          AudioLinkState value, $Res Function(AudioLinkState) then) =
      _$AudioLinkStateCopyWithImpl<$Res, AudioLinkState>;
}

/// @nodoc
class _$AudioLinkStateCopyWithImpl<$Res, $Val extends AudioLinkState>
    implements $AudioLinkStateCopyWith<$Res> {
  _$AudioLinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioLinkInitialStateImplCopyWith<$Res> {
  factory _$$AudioLinkInitialStateImplCopyWith(
          _$AudioLinkInitialStateImpl value,
          $Res Function(_$AudioLinkInitialStateImpl) then) =
      __$$AudioLinkInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioLinkInitialStateImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkInitialStateImpl>
    implements _$$AudioLinkInitialStateImplCopyWith<$Res> {
  __$$AudioLinkInitialStateImplCopyWithImpl(_$AudioLinkInitialStateImpl _value,
      $Res Function(_$AudioLinkInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioLinkInitialStateImpl implements _AudioLinkInitialState {
  const _$AudioLinkInitialStateImpl();

  @override
  String toString() {
    return 'AudioLinkState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioLinkInitialStateImpl);
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
    required TResult Function(_AudioLinkInitialState value) initial,
    required TResult Function(_AudioLinkFailedState value) failed,
    required TResult Function(_AudioLinkSendedState value) sended,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitialState value)? initial,
    TResult? Function(_AudioLinkFailedState value)? failed,
    TResult? Function(_AudioLinkSendedState value)? sended,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitialState value)? initial,
    TResult Function(_AudioLinkFailedState value)? failed,
    TResult Function(_AudioLinkSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkInitialState implements AudioLinkState {
  const factory _AudioLinkInitialState() = _$AudioLinkInitialStateImpl;
}

/// @nodoc
abstract class _$$AudioLinkFailedStateImplCopyWith<$Res> {
  factory _$$AudioLinkFailedStateImplCopyWith(_$AudioLinkFailedStateImpl value,
          $Res Function(_$AudioLinkFailedStateImpl) then) =
      __$$AudioLinkFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AudioLinkFailedStateImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkFailedStateImpl>
    implements _$$AudioLinkFailedStateImplCopyWith<$Res> {
  __$$AudioLinkFailedStateImplCopyWithImpl(_$AudioLinkFailedStateImpl _value,
      $Res Function(_$AudioLinkFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AudioLinkFailedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AudioLinkFailedStateImpl implements _AudioLinkFailedState {
  const _$AudioLinkFailedStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AudioLinkState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioLinkFailedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioLinkFailedStateImplCopyWith<_$AudioLinkFailedStateImpl>
      get copyWith =>
          __$$AudioLinkFailedStateImplCopyWithImpl<_$AudioLinkFailedStateImpl>(
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
    required TResult Function(_AudioLinkInitialState value) initial,
    required TResult Function(_AudioLinkFailedState value) failed,
    required TResult Function(_AudioLinkSendedState value) sended,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitialState value)? initial,
    TResult? Function(_AudioLinkFailedState value)? failed,
    TResult? Function(_AudioLinkSendedState value)? sended,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitialState value)? initial,
    TResult Function(_AudioLinkFailedState value)? failed,
    TResult Function(_AudioLinkSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkFailedState implements AudioLinkState {
  const factory _AudioLinkFailedState(final String message) =
      _$AudioLinkFailedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AudioLinkFailedStateImplCopyWith<_$AudioLinkFailedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioLinkSendedStateImplCopyWith<$Res> {
  factory _$$AudioLinkSendedStateImplCopyWith(_$AudioLinkSendedStateImpl value,
          $Res Function(_$AudioLinkSendedStateImpl) then) =
      __$$AudioLinkSendedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioLinkSendedStateImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkSendedStateImpl>
    implements _$$AudioLinkSendedStateImplCopyWith<$Res> {
  __$$AudioLinkSendedStateImplCopyWithImpl(_$AudioLinkSendedStateImpl _value,
      $Res Function(_$AudioLinkSendedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioLinkSendedStateImpl implements _AudioLinkSendedState {
  const _$AudioLinkSendedStateImpl();

  @override
  String toString() {
    return 'AudioLinkState.sended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioLinkSendedStateImpl);
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
    required TResult Function(_AudioLinkInitialState value) initial,
    required TResult Function(_AudioLinkFailedState value) failed,
    required TResult Function(_AudioLinkSendedState value) sended,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitialState value)? initial,
    TResult? Function(_AudioLinkFailedState value)? failed,
    TResult? Function(_AudioLinkSendedState value)? sended,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitialState value)? initial,
    TResult Function(_AudioLinkFailedState value)? failed,
    TResult Function(_AudioLinkSendedState value)? sended,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkSendedState implements AudioLinkState {
  const factory _AudioLinkSendedState() = _$AudioLinkSendedStateImpl;
}

/// @nodoc
mixin _$AudioLinkEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? sendLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendLinkEvent value) sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLinkEvent value)? sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLinkEvent value)? sendLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioLinkEventCopyWith<AudioLinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioLinkEventCopyWith<$Res> {
  factory $AudioLinkEventCopyWith(
          AudioLinkEvent value, $Res Function(AudioLinkEvent) then) =
      _$AudioLinkEventCopyWithImpl<$Res, AudioLinkEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$AudioLinkEventCopyWithImpl<$Res, $Val extends AudioLinkEvent>
    implements $AudioLinkEventCopyWith<$Res> {
  _$AudioLinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendLinkEventImplCopyWith<$Res>
    implements $AudioLinkEventCopyWith<$Res> {
  factory _$$SendLinkEventImplCopyWith(
          _$SendLinkEventImpl value, $Res Function(_$SendLinkEventImpl) then) =
      __$$SendLinkEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$SendLinkEventImplCopyWithImpl<$Res>
    extends _$AudioLinkEventCopyWithImpl<$Res, _$SendLinkEventImpl>
    implements _$$SendLinkEventImplCopyWith<$Res> {
  __$$SendLinkEventImplCopyWithImpl(
      _$SendLinkEventImpl _value, $Res Function(_$SendLinkEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$SendLinkEventImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendLinkEventImpl implements _SendLinkEvent {
  const _$SendLinkEventImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'AudioLinkEvent.sendLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLinkEventImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLinkEventImplCopyWith<_$SendLinkEventImpl> get copyWith =>
      __$$SendLinkEventImplCopyWithImpl<_$SendLinkEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) sendLink,
  }) {
    return sendLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? sendLink,
  }) {
    return sendLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_SendLinkEvent value) sendLink,
  }) {
    return sendLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLinkEvent value)? sendLink,
  }) {
    return sendLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLinkEvent value)? sendLink,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(this);
    }
    return orElse();
  }
}

abstract class _SendLinkEvent implements AudioLinkEvent {
  const factory _SendLinkEvent(final String link) = _$SendLinkEventImpl;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$SendLinkEventImplCopyWith<_$SendLinkEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
