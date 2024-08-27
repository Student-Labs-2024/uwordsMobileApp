// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GradeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function() disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function()? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function()? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledState value) enabled,
    required TResult Function(_DisabledState value) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledState value)? enabled,
    TResult? Function(_DisabledState value)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledState value)? enabled,
    TResult Function(_DisabledState value)? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeStateCopyWith<$Res> {
  factory $GradeStateCopyWith(
          GradeState value, $Res Function(GradeState) then) =
      _$GradeStateCopyWithImpl<$Res, GradeState>;
}

/// @nodoc
class _$GradeStateCopyWithImpl<$Res, $Val extends GradeState>
    implements $GradeStateCopyWith<$Res> {
  _$GradeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnabledStateImplCopyWith<$Res> {
  factory _$$EnabledStateImplCopyWith(
          _$EnabledStateImpl value, $Res Function(_$EnabledStateImpl) then) =
      __$$EnabledStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnabledStateImplCopyWithImpl<$Res>
    extends _$GradeStateCopyWithImpl<$Res, _$EnabledStateImpl>
    implements _$$EnabledStateImplCopyWith<$Res> {
  __$$EnabledStateImplCopyWithImpl(
      _$EnabledStateImpl _value, $Res Function(_$EnabledStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnabledStateImpl implements _EnabledState {
  const _$EnabledStateImpl();

  @override
  String toString() {
    return 'GradeState.enabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnabledStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function() disabled,
  }) {
    return enabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function()? disabled,
  }) {
    return enabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function()? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledState value) enabled,
    required TResult Function(_DisabledState value) disabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledState value)? enabled,
    TResult? Function(_DisabledState value)? disabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledState value)? enabled,
    TResult Function(_DisabledState value)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class _EnabledState implements GradeState {
  const factory _EnabledState() = _$EnabledStateImpl;
}

/// @nodoc
abstract class _$$DisabledStateImplCopyWith<$Res> {
  factory _$$DisabledStateImplCopyWith(
          _$DisabledStateImpl value, $Res Function(_$DisabledStateImpl) then) =
      __$$DisabledStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisabledStateImplCopyWithImpl<$Res>
    extends _$GradeStateCopyWithImpl<$Res, _$DisabledStateImpl>
    implements _$$DisabledStateImplCopyWith<$Res> {
  __$$DisabledStateImplCopyWithImpl(
      _$DisabledStateImpl _value, $Res Function(_$DisabledStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisabledStateImpl implements _DisabledState {
  const _$DisabledStateImpl();

  @override
  String toString() {
    return 'GradeState.disabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisabledStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function() disabled,
  }) {
    return disabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function()? disabled,
  }) {
    return disabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function()? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledState value) enabled,
    required TResult Function(_DisabledState value) disabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledState value)? enabled,
    TResult? Function(_DisabledState value)? disabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledState value)? enabled,
    TResult Function(_DisabledState value)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class _DisabledState implements GradeState {
  const factory _DisabledState() = _$DisabledStateImpl;
}

/// @nodoc
mixin _$GradeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
    required TResult Function(int stars, String textGrade) sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
    TResult? Function(int stars, String textGrade)? sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    TResult Function(int stars, String textGrade)? sendGrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEvent value) open,
    required TResult Function(_CloseEvent value) close,
    required TResult Function(_SendGradeEvent value) sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenEvent value)? open,
    TResult? Function(_CloseEvent value)? close,
    TResult? Function(_SendGradeEvent value)? sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEvent value)? open,
    TResult Function(_CloseEvent value)? close,
    TResult Function(_SendGradeEvent value)? sendGrade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeEventCopyWith<$Res> {
  factory $GradeEventCopyWith(
          GradeEvent value, $Res Function(GradeEvent) then) =
      _$GradeEventCopyWithImpl<$Res, GradeEvent>;
}

/// @nodoc
class _$GradeEventCopyWithImpl<$Res, $Val extends GradeEvent>
    implements $GradeEventCopyWith<$Res> {
  _$GradeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OpenEventImplCopyWith<$Res> {
  factory _$$OpenEventImplCopyWith(
          _$OpenEventImpl value, $Res Function(_$OpenEventImpl) then) =
      __$$OpenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenEventImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$OpenEventImpl>
    implements _$$OpenEventImplCopyWith<$Res> {
  __$$OpenEventImplCopyWithImpl(
      _$OpenEventImpl _value, $Res Function(_$OpenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenEventImpl implements _OpenEvent {
  const _$OpenEventImpl();

  @override
  String toString() {
    return 'GradeEvent.open()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
    required TResult Function(int stars, String textGrade) sendGrade,
  }) {
    return open();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
    TResult? Function(int stars, String textGrade)? sendGrade,
  }) {
    return open?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    TResult Function(int stars, String textGrade)? sendGrade,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEvent value) open,
    required TResult Function(_CloseEvent value) close,
    required TResult Function(_SendGradeEvent value) sendGrade,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenEvent value)? open,
    TResult? Function(_CloseEvent value)? close,
    TResult? Function(_SendGradeEvent value)? sendGrade,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEvent value)? open,
    TResult Function(_CloseEvent value)? close,
    TResult Function(_SendGradeEvent value)? sendGrade,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class _OpenEvent implements GradeEvent {
  const factory _OpenEvent() = _$OpenEventImpl;
}

/// @nodoc
abstract class _$$CloseEventImplCopyWith<$Res> {
  factory _$$CloseEventImplCopyWith(
          _$CloseEventImpl value, $Res Function(_$CloseEventImpl) then) =
      __$$CloseEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseEventImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$CloseEventImpl>
    implements _$$CloseEventImplCopyWith<$Res> {
  __$$CloseEventImplCopyWithImpl(
      _$CloseEventImpl _value, $Res Function(_$CloseEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseEventImpl implements _CloseEvent {
  const _$CloseEventImpl();

  @override
  String toString() {
    return 'GradeEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
    required TResult Function(int stars, String textGrade) sendGrade,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
    TResult? Function(int stars, String textGrade)? sendGrade,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    TResult Function(int stars, String textGrade)? sendGrade,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEvent value) open,
    required TResult Function(_CloseEvent value) close,
    required TResult Function(_SendGradeEvent value) sendGrade,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenEvent value)? open,
    TResult? Function(_CloseEvent value)? close,
    TResult? Function(_SendGradeEvent value)? sendGrade,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEvent value)? open,
    TResult Function(_CloseEvent value)? close,
    TResult Function(_SendGradeEvent value)? sendGrade,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _CloseEvent implements GradeEvent {
  const factory _CloseEvent() = _$CloseEventImpl;
}

/// @nodoc
abstract class _$$SendGradeEventImplCopyWith<$Res> {
  factory _$$SendGradeEventImplCopyWith(_$SendGradeEventImpl value,
          $Res Function(_$SendGradeEventImpl) then) =
      __$$SendGradeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stars, String textGrade});
}

/// @nodoc
class __$$SendGradeEventImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$SendGradeEventImpl>
    implements _$$SendGradeEventImplCopyWith<$Res> {
  __$$SendGradeEventImplCopyWithImpl(
      _$SendGradeEventImpl _value, $Res Function(_$SendGradeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stars = null,
    Object? textGrade = null,
  }) {
    return _then(_$SendGradeEventImpl(
      null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      null == textGrade
          ? _value.textGrade
          : textGrade // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendGradeEventImpl implements _SendGradeEvent {
  const _$SendGradeEventImpl(this.stars, this.textGrade);

  @override
  final int stars;
  @override
  final String textGrade;

  @override
  String toString() {
    return 'GradeEvent.sendGrade(stars: $stars, textGrade: $textGrade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendGradeEventImpl &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.textGrade, textGrade) ||
                other.textGrade == textGrade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stars, textGrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendGradeEventImplCopyWith<_$SendGradeEventImpl> get copyWith =>
      __$$SendGradeEventImplCopyWithImpl<_$SendGradeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
    required TResult Function(int stars, String textGrade) sendGrade,
  }) {
    return sendGrade(stars, textGrade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? open,
    TResult? Function()? close,
    TResult? Function(int stars, String textGrade)? sendGrade,
  }) {
    return sendGrade?.call(stars, textGrade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    TResult Function(int stars, String textGrade)? sendGrade,
    required TResult orElse(),
  }) {
    if (sendGrade != null) {
      return sendGrade(stars, textGrade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenEvent value) open,
    required TResult Function(_CloseEvent value) close,
    required TResult Function(_SendGradeEvent value) sendGrade,
  }) {
    return sendGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenEvent value)? open,
    TResult? Function(_CloseEvent value)? close,
    TResult? Function(_SendGradeEvent value)? sendGrade,
  }) {
    return sendGrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenEvent value)? open,
    TResult Function(_CloseEvent value)? close,
    TResult Function(_SendGradeEvent value)? sendGrade,
    required TResult orElse(),
  }) {
    if (sendGrade != null) {
      return sendGrade(this);
    }
    return orElse();
  }
}

abstract class _SendGradeEvent implements GradeEvent {
  const factory _SendGradeEvent(final int stars, final String textGrade) =
      _$SendGradeEventImpl;

  int get stars;
  String get textGrade;
  @JsonKey(ignore: true)
  _$$SendGradeEventImplCopyWith<_$SendGradeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
