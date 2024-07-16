// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audioLink_bloc.dart';

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
    required TResult Function(_AudioLinkInitial value) initial,
    required TResult Function(_AudioLinkFailed value) failed,
    required TResult Function(_AudioLinkSended value) sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitial value)? initial,
    TResult? Function(_AudioLinkFailed value)? failed,
    TResult? Function(_AudioLinkSended value)? sended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitial value)? initial,
    TResult Function(_AudioLinkFailed value)? failed,
    TResult Function(_AudioLinkSended value)? sended,
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
abstract class _$$AudioLinkInitialImplCopyWith<$Res> {
  factory _$$AudioLinkInitialImplCopyWith(_$AudioLinkInitialImpl value,
          $Res Function(_$AudioLinkInitialImpl) then) =
      __$$AudioLinkInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioLinkInitialImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkInitialImpl>
    implements _$$AudioLinkInitialImplCopyWith<$Res> {
  __$$AudioLinkInitialImplCopyWithImpl(_$AudioLinkInitialImpl _value,
      $Res Function(_$AudioLinkInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioLinkInitialImpl implements _AudioLinkInitial {
  const _$AudioLinkInitialImpl();

  @override
  String toString() {
    return 'AudioLinkState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioLinkInitialImpl);
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
    required TResult Function(_AudioLinkInitial value) initial,
    required TResult Function(_AudioLinkFailed value) failed,
    required TResult Function(_AudioLinkSended value) sended,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitial value)? initial,
    TResult? Function(_AudioLinkFailed value)? failed,
    TResult? Function(_AudioLinkSended value)? sended,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitial value)? initial,
    TResult Function(_AudioLinkFailed value)? failed,
    TResult Function(_AudioLinkSended value)? sended,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkInitial implements AudioLinkState {
  const factory _AudioLinkInitial() = _$AudioLinkInitialImpl;
}

/// @nodoc
abstract class _$$AudioLinkFailedImplCopyWith<$Res> {
  factory _$$AudioLinkFailedImplCopyWith(_$AudioLinkFailedImpl value,
          $Res Function(_$AudioLinkFailedImpl) then) =
      __$$AudioLinkFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AudioLinkFailedImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkFailedImpl>
    implements _$$AudioLinkFailedImplCopyWith<$Res> {
  __$$AudioLinkFailedImplCopyWithImpl(
      _$AudioLinkFailedImpl _value, $Res Function(_$AudioLinkFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AudioLinkFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AudioLinkFailedImpl implements _AudioLinkFailed {
  const _$AudioLinkFailedImpl(this.message);

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
            other is _$AudioLinkFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioLinkFailedImplCopyWith<_$AudioLinkFailedImpl> get copyWith =>
      __$$AudioLinkFailedImplCopyWithImpl<_$AudioLinkFailedImpl>(
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
    required TResult Function(_AudioLinkInitial value) initial,
    required TResult Function(_AudioLinkFailed value) failed,
    required TResult Function(_AudioLinkSended value) sended,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitial value)? initial,
    TResult? Function(_AudioLinkFailed value)? failed,
    TResult? Function(_AudioLinkSended value)? sended,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitial value)? initial,
    TResult Function(_AudioLinkFailed value)? failed,
    TResult Function(_AudioLinkSended value)? sended,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkFailed implements AudioLinkState {
  const factory _AudioLinkFailed(final String message) = _$AudioLinkFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AudioLinkFailedImplCopyWith<_$AudioLinkFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioLinkSendedImplCopyWith<$Res> {
  factory _$$AudioLinkSendedImplCopyWith(_$AudioLinkSendedImpl value,
          $Res Function(_$AudioLinkSendedImpl) then) =
      __$$AudioLinkSendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioLinkSendedImplCopyWithImpl<$Res>
    extends _$AudioLinkStateCopyWithImpl<$Res, _$AudioLinkSendedImpl>
    implements _$$AudioLinkSendedImplCopyWith<$Res> {
  __$$AudioLinkSendedImplCopyWithImpl(
      _$AudioLinkSendedImpl _value, $Res Function(_$AudioLinkSendedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioLinkSendedImpl implements _AudioLinkSended {
  const _$AudioLinkSendedImpl();

  @override
  String toString() {
    return 'AudioLinkState.sended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioLinkSendedImpl);
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
    required TResult Function(_AudioLinkInitial value) initial,
    required TResult Function(_AudioLinkFailed value) failed,
    required TResult Function(_AudioLinkSended value) sended,
  }) {
    return sended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AudioLinkInitial value)? initial,
    TResult? Function(_AudioLinkFailed value)? failed,
    TResult? Function(_AudioLinkSended value)? sended,
  }) {
    return sended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AudioLinkInitial value)? initial,
    TResult Function(_AudioLinkFailed value)? failed,
    TResult Function(_AudioLinkSended value)? sended,
    required TResult orElse(),
  }) {
    if (sended != null) {
      return sended(this);
    }
    return orElse();
  }
}

abstract class _AudioLinkSended implements AudioLinkState {
  const factory _AudioLinkSended() = _$AudioLinkSendedImpl;
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
    required TResult Function(_SendLink value) sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLink value)? sendLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLink value)? sendLink,
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
abstract class _$$SendLinkImplCopyWith<$Res>
    implements $AudioLinkEventCopyWith<$Res> {
  factory _$$SendLinkImplCopyWith(
          _$SendLinkImpl value, $Res Function(_$SendLinkImpl) then) =
      __$$SendLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$SendLinkImplCopyWithImpl<$Res>
    extends _$AudioLinkEventCopyWithImpl<$Res, _$SendLinkImpl>
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

class _$SendLinkImpl implements _SendLink {
  const _$SendLinkImpl(this.link);

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
    required TResult Function(_SendLink value) sendLink,
  }) {
    return sendLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendLink value)? sendLink,
  }) {
    return sendLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendLink value)? sendLink,
    required TResult orElse(),
  }) {
    if (sendLink != null) {
      return sendLink(this);
    }
    return orElse();
  }
}

abstract class _SendLink implements AudioLinkEvent {
  const factory _SendLink(final String link) = _$SendLinkImpl;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$SendLinkImplCopyWith<_$SendLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
