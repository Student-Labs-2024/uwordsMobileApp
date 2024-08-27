// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)
        gotInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileFailedState value) failed,
    required TResult Function(_GotInfoState value) gotInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileFailedState value)? failed,
    TResult? Function(_GotInfoState value)? gotInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileFailedState value)? failed,
    TResult Function(_GotInfoState value)? gotInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileInitialStateImplCopyWith<$Res> {
  factory _$$ProfileInitialStateImplCopyWith(_$ProfileInitialStateImpl value,
          $Res Function(_$ProfileInitialStateImpl) then) =
      __$$ProfileInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileInitialStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialStateImpl>
    implements _$$ProfileInitialStateImplCopyWith<$Res> {
  __$$ProfileInitialStateImplCopyWithImpl(_$ProfileInitialStateImpl _value,
      $Res Function(_$ProfileInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileInitialStateImpl implements _ProfileInitialState {
  const _$ProfileInitialStateImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)
        gotInfo,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileFailedState value) failed,
    required TResult Function(_GotInfoState value) gotInfo,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileFailedState value)? failed,
    TResult? Function(_GotInfoState value)? gotInfo,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileFailedState value)? failed,
    TResult Function(_GotInfoState value)? gotInfo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProfileInitialState implements ProfileState {
  const factory _ProfileInitialState() = _$ProfileInitialStateImpl;
}

/// @nodoc
abstract class _$$ProfileFailedStateImplCopyWith<$Res> {
  factory _$$ProfileFailedStateImplCopyWith(_$ProfileFailedStateImpl value,
          $Res Function(_$ProfileFailedStateImpl) then) =
      __$$ProfileFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileFailedStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileFailedStateImpl>
    implements _$$ProfileFailedStateImplCopyWith<$Res> {
  __$$ProfileFailedStateImplCopyWithImpl(_$ProfileFailedStateImpl _value,
      $Res Function(_$ProfileFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileFailedStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileFailedStateImpl implements _ProfileFailedState {
  const _$ProfileFailedStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFailedStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFailedStateImplCopyWith<_$ProfileFailedStateImpl> get copyWith =>
      __$$ProfileFailedStateImplCopyWithImpl<_$ProfileFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)
        gotInfo,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileFailedState value) failed,
    required TResult Function(_GotInfoState value) gotInfo,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileFailedState value)? failed,
    TResult? Function(_GotInfoState value)? gotInfo,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileFailedState value)? failed,
    TResult Function(_GotInfoState value)? gotInfo,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _ProfileFailedState implements ProfileState {
  const factory _ProfileFailedState(final String message) =
      _$ProfileFailedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileFailedStateImplCopyWith<_$ProfileFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GotInfoStateImplCopyWith<$Res> {
  factory _$$GotInfoStateImplCopyWith(
          _$GotInfoStateImpl value, $Res Function(_$GotInfoStateImpl) then) =
      __$$GotInfoStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userName,
      String avatarUrl,
      List<Subtopic> almostLearned,
      List<Subtopic> learned,
      List<AchievementCategoryModel> achievements,
      Metrics metrics});
}

/// @nodoc
class __$$GotInfoStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$GotInfoStateImpl>
    implements _$$GotInfoStateImplCopyWith<$Res> {
  __$$GotInfoStateImplCopyWithImpl(
      _$GotInfoStateImpl _value, $Res Function(_$GotInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? avatarUrl = null,
    Object? almostLearned = null,
    Object? learned = null,
    Object? achievements = null,
    Object? metrics = null,
  }) {
    return _then(_$GotInfoStateImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == almostLearned
          ? _value._almostLearned
          : almostLearned // ignore: cast_nullable_to_non_nullable
              as List<Subtopic>,
      null == learned
          ? _value._learned
          : learned // ignore: cast_nullable_to_non_nullable
              as List<Subtopic>,
      null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementCategoryModel>,
      null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }
}

/// @nodoc

class _$GotInfoStateImpl implements _GotInfoState {
  const _$GotInfoStateImpl(
      this.userName,
      this.avatarUrl,
      final List<Subtopic> almostLearned,
      final List<Subtopic> learned,
      final List<AchievementCategoryModel> achievements,
      this.metrics)
      : _almostLearned = almostLearned,
        _learned = learned,
        _achievements = achievements;

  @override
  final String userName;
  @override
  final String avatarUrl;
  final List<Subtopic> _almostLearned;
  @override
  List<Subtopic> get almostLearned {
    if (_almostLearned is EqualUnmodifiableListView) return _almostLearned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_almostLearned);
  }

  final List<Subtopic> _learned;
  @override
  List<Subtopic> get learned {
    if (_learned is EqualUnmodifiableListView) return _learned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learned);
  }

  final List<AchievementCategoryModel> _achievements;
  @override
  List<AchievementCategoryModel> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  final Metrics metrics;

  @override
  String toString() {
    return 'ProfileState.gotInfo(userName: $userName, avatarUrl: $avatarUrl, almostLearned: $almostLearned, learned: $learned, achievements: $achievements, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotInfoStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._almostLearned, _almostLearned) &&
            const DeepCollectionEquality().equals(other._learned, _learned) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.metrics, metrics) || other.metrics == metrics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      avatarUrl,
      const DeepCollectionEquality().hash(_almostLearned),
      const DeepCollectionEquality().hash(_learned),
      const DeepCollectionEquality().hash(_achievements),
      metrics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotInfoStateImplCopyWith<_$GotInfoStateImpl> get copyWith =>
      __$$GotInfoStateImplCopyWithImpl<_$GotInfoStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) failed,
    required TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)
        gotInfo,
  }) {
    return gotInfo(
        userName, avatarUrl, almostLearned, learned, achievements, metrics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? failed,
    TResult? Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
  }) {
    return gotInfo?.call(
        userName, avatarUrl, almostLearned, learned, achievements, metrics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? failed,
    TResult Function(
            String userName,
            String avatarUrl,
            List<Subtopic> almostLearned,
            List<Subtopic> learned,
            List<AchievementCategoryModel> achievements,
            Metrics metrics)?
        gotInfo,
    required TResult orElse(),
  }) {
    if (gotInfo != null) {
      return gotInfo(
          userName, avatarUrl, almostLearned, learned, achievements, metrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileFailedState value) failed,
    required TResult Function(_GotInfoState value) gotInfo,
  }) {
    return gotInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfileInitialState value)? initial,
    TResult? Function(_ProfileFailedState value)? failed,
    TResult? Function(_GotInfoState value)? gotInfo,
  }) {
    return gotInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileFailedState value)? failed,
    TResult Function(_GotInfoState value)? gotInfo,
    required TResult orElse(),
  }) {
    if (gotInfo != null) {
      return gotInfo(this);
    }
    return orElse();
  }
}

abstract class _GotInfoState implements ProfileState {
  const factory _GotInfoState(
      final String userName,
      final String avatarUrl,
      final List<Subtopic> almostLearned,
      final List<Subtopic> learned,
      final List<AchievementCategoryModel> achievements,
      final Metrics metrics) = _$GotInfoStateImpl;

  String get userName;
  String get avatarUrl;
  List<Subtopic> get almostLearned;
  List<Subtopic> get learned;
  List<AchievementCategoryModel> get achievements;
  Metrics get metrics;
  @JsonKey(ignore: true)
  _$$GotInfoStateImplCopyWith<_$GotInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserInfoEvent value) getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserInfoEvent value)? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserInfoEvent value)? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserInfoEventImplCopyWith<$Res> {
  factory _$$GetUserInfoEventImplCopyWith(_$GetUserInfoEventImpl value,
          $Res Function(_$GetUserInfoEventImpl) then) =
      __$$GetUserInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserInfoEventImpl>
    implements _$$GetUserInfoEventImplCopyWith<$Res> {
  __$$GetUserInfoEventImplCopyWithImpl(_$GetUserInfoEventImpl _value,
      $Res Function(_$GetUserInfoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserInfoEventImpl implements _GetUserInfoEvent {
  const _$GetUserInfoEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserInfoEvent value) getUserInfo,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserInfoEvent value)? getUserInfo,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserInfoEvent value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class _GetUserInfoEvent implements ProfileEvent {
  const factory _GetUserInfoEvent() = _$GetUserInfoEventImpl;
}
