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
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
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
abstract class _$$EnabledImplCopyWith<$Res> {
  factory _$$EnabledImplCopyWith(
          _$EnabledImpl value, $Res Function(_$EnabledImpl) then) =
      __$$EnabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnabledImplCopyWithImpl<$Res>
    extends _$GradeStateCopyWithImpl<$Res, _$EnabledImpl>
    implements _$$EnabledImplCopyWith<$Res> {
  __$$EnabledImplCopyWithImpl(
      _$EnabledImpl _value, $Res Function(_$EnabledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnabledImpl implements _Enabled {
  const _$EnabledImpl();

  @override
  String toString() {
    return 'GradeState.enabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnabledImpl);
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
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class _Enabled implements GradeState {
  const factory _Enabled() = _$EnabledImpl;
}

/// @nodoc
abstract class _$$DisabledImplCopyWith<$Res> {
  factory _$$DisabledImplCopyWith(
          _$DisabledImpl value, $Res Function(_$DisabledImpl) then) =
      __$$DisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisabledImplCopyWithImpl<$Res>
    extends _$GradeStateCopyWithImpl<$Res, _$DisabledImpl>
    implements _$$DisabledImplCopyWith<$Res> {
  __$$DisabledImplCopyWithImpl(
      _$DisabledImpl _value, $Res Function(_$DisabledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisabledImpl implements _Disabled {
  const _$DisabledImpl();

  @override
  String toString() {
    return 'GradeState.disabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisabledImpl);
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
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class _Disabled implements GradeState {
  const factory _Disabled() = _$DisabledImpl;
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
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
    required TResult Function(_SendGrade value) sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Open value)? open,
    TResult? Function(_Close value)? close,
    TResult? Function(_SendGrade value)? sendGrade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    TResult Function(_SendGrade value)? sendGrade,
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
abstract class _$$OpenImplCopyWith<$Res> {
  factory _$$OpenImplCopyWith(
          _$OpenImpl value, $Res Function(_$OpenImpl) then) =
      __$$OpenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$OpenImpl>
    implements _$$OpenImplCopyWith<$Res> {
  __$$OpenImplCopyWithImpl(_$OpenImpl _value, $Res Function(_$OpenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpenImpl implements _Open {
  const _$OpenImpl();

  @override
  String toString() {
    return 'GradeEvent.open()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenImpl);
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
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
    required TResult Function(_SendGrade value) sendGrade,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Open value)? open,
    TResult? Function(_Close value)? close,
    TResult? Function(_SendGrade value)? sendGrade,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    TResult Function(_SendGrade value)? sendGrade,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class _Open implements GradeEvent {
  const factory _Open() = _$OpenImpl;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseImpl implements _Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'GradeEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
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
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
    required TResult Function(_SendGrade value) sendGrade,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Open value)? open,
    TResult? Function(_Close value)? close,
    TResult? Function(_SendGrade value)? sendGrade,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    TResult Function(_SendGrade value)? sendGrade,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements GradeEvent {
  const factory _Close() = _$CloseImpl;
}

/// @nodoc
abstract class _$$SendGradeImplCopyWith<$Res> {
  factory _$$SendGradeImplCopyWith(
          _$SendGradeImpl value, $Res Function(_$SendGradeImpl) then) =
      __$$SendGradeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stars, String textGrade});
}

/// @nodoc
class __$$SendGradeImplCopyWithImpl<$Res>
    extends _$GradeEventCopyWithImpl<$Res, _$SendGradeImpl>
    implements _$$SendGradeImplCopyWith<$Res> {
  __$$SendGradeImplCopyWithImpl(
      _$SendGradeImpl _value, $Res Function(_$SendGradeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stars = null,
    Object? textGrade = null,
  }) {
    return _then(_$SendGradeImpl(
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

class _$SendGradeImpl implements _SendGrade {
  const _$SendGradeImpl(this.stars, this.textGrade);

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
            other is _$SendGradeImpl &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.textGrade, textGrade) ||
                other.textGrade == textGrade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stars, textGrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendGradeImplCopyWith<_$SendGradeImpl> get copyWith =>
      __$$SendGradeImplCopyWithImpl<_$SendGradeImpl>(this, _$identity);

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
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
    required TResult Function(_SendGrade value) sendGrade,
  }) {
    return sendGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Open value)? open,
    TResult? Function(_Close value)? close,
    TResult? Function(_SendGrade value)? sendGrade,
  }) {
    return sendGrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    TResult Function(_SendGrade value)? sendGrade,
    required TResult orElse(),
  }) {
    if (sendGrade != null) {
      return sendGrade(this);
    }
    return orElse();
  }
}

abstract class _SendGrade implements GradeEvent {
  const factory _SendGrade(final int stars, final String textGrade) =
      _$SendGradeImpl;

  int get stars;
  String get textGrade;
  @JsonKey(ignore: true)
  _$$SendGradeImplCopyWith<_$SendGradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
