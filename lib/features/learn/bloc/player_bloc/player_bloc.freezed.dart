// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playing,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playing,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playing,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerPlayingState value) playing,
    required TResult Function(_PlayerFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerPlayingState value)? playing,
    TResult? Function(_PlayerFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerPlayingState value)? playing,
    TResult Function(_PlayerFailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayerInitialStateImplCopyWith<$Res> {
  factory _$$PlayerInitialStateImplCopyWith(_$PlayerInitialStateImpl value,
          $Res Function(_$PlayerInitialStateImpl) then) =
      __$$PlayerInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerInitialStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerInitialStateImpl>
    implements _$$PlayerInitialStateImplCopyWith<$Res> {
  __$$PlayerInitialStateImplCopyWithImpl(_$PlayerInitialStateImpl _value,
      $Res Function(_$PlayerInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerInitialStateImpl implements _PlayerInitialState {
  const _$PlayerInitialStateImpl();

  @override
  String toString() {
    return 'PlayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playing,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playing,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playing,
    TResult Function()? failed,
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
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerPlayingState value) playing,
    required TResult Function(_PlayerFailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerPlayingState value)? playing,
    TResult? Function(_PlayerFailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerPlayingState value)? playing,
    TResult Function(_PlayerFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PlayerInitialState implements PlayerState {
  const factory _PlayerInitialState() = _$PlayerInitialStateImpl;
}

/// @nodoc
abstract class _$$PlayerPlayingStateImplCopyWith<$Res> {
  factory _$$PlayerPlayingStateImplCopyWith(_$PlayerPlayingStateImpl value,
          $Res Function(_$PlayerPlayingStateImpl) then) =
      __$$PlayerPlayingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerPlayingStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerPlayingStateImpl>
    implements _$$PlayerPlayingStateImplCopyWith<$Res> {
  __$$PlayerPlayingStateImplCopyWithImpl(_$PlayerPlayingStateImpl _value,
      $Res Function(_$PlayerPlayingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerPlayingStateImpl implements _PlayerPlayingState {
  const _$PlayerPlayingStateImpl();

  @override
  String toString() {
    return 'PlayerState.playing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerPlayingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playing,
    required TResult Function() failed,
  }) {
    return playing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playing,
    TResult? Function()? failed,
  }) {
    return playing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playing,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerPlayingState value) playing,
    required TResult Function(_PlayerFailedState value) failed,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerPlayingState value)? playing,
    TResult? Function(_PlayerFailedState value)? failed,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerPlayingState value)? playing,
    TResult Function(_PlayerFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _PlayerPlayingState implements PlayerState {
  const factory _PlayerPlayingState() = _$PlayerPlayingStateImpl;
}

/// @nodoc
abstract class _$$PlayerFailedStateImplCopyWith<$Res> {
  factory _$$PlayerFailedStateImplCopyWith(_$PlayerFailedStateImpl value,
          $Res Function(_$PlayerFailedStateImpl) then) =
      __$$PlayerFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerFailedStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerFailedStateImpl>
    implements _$$PlayerFailedStateImplCopyWith<$Res> {
  __$$PlayerFailedStateImplCopyWithImpl(_$PlayerFailedStateImpl _value,
      $Res Function(_$PlayerFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerFailedStateImpl implements _PlayerFailedState {
  const _$PlayerFailedStateImpl();

  @override
  String toString() {
    return 'PlayerState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() playing,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? playing,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? playing,
    TResult Function()? failed,
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
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerPlayingState value) playing,
    required TResult Function(_PlayerFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerPlayingState value)? playing,
    TResult? Function(_PlayerFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerPlayingState value)? playing,
    TResult Function(_PlayerFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PlayerFailedState implements PlayerState {
  const factory _PlayerFailedState() = _$PlayerFailedStateImpl;
}

/// @nodoc
mixin _$PlayerEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? playAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudioEvent value) playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudioEvent value)? playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudioEvent value)? playAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerEventCopyWith<PlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$PlayAudioEventImplCopyWith<$Res>
    implements $PlayerEventCopyWith<$Res> {
  factory _$$PlayAudioEventImplCopyWith(_$PlayAudioEventImpl value,
          $Res Function(_$PlayAudioEventImpl) then) =
      __$$PlayAudioEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$PlayAudioEventImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayAudioEventImpl>
    implements _$$PlayAudioEventImplCopyWith<$Res> {
  __$$PlayAudioEventImplCopyWithImpl(
      _$PlayAudioEventImpl _value, $Res Function(_$PlayAudioEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$PlayAudioEventImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayAudioEventImpl implements _PlayAudioEvent {
  const _$PlayAudioEventImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'PlayerEvent.playAudio(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayAudioEventImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayAudioEventImplCopyWith<_$PlayAudioEventImpl> get copyWith =>
      __$$PlayAudioEventImplCopyWithImpl<_$PlayAudioEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) playAudio,
  }) {
    return playAudio(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? playAudio,
  }) {
    return playAudio?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? playAudio,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudioEvent value) playAudio,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudioEvent value)? playAudio,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudioEvent value)? playAudio,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudioEvent implements PlayerEvent {
  const factory _PlayAudioEvent(final String link) = _$PlayAudioEventImpl;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$PlayAudioEventImplCopyWith<_$PlayAudioEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
