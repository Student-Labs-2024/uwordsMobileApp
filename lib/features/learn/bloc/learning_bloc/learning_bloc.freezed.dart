// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningState {
  List<Topic> get topics => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(List<Topic> topics) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(List<Topic> topics)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningStateCopyWith<LearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStateCopyWith<$Res> {
  factory $LearningStateCopyWith(
          LearningState value, $Res Function(LearningState) then) =
      _$LearningStateCopyWithImpl<$Res, LearningState>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res, $Val extends LearningState>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningInitialImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningInitialImplCopyWith(_$LearningInitialImpl value,
          $Res Function(_$LearningInitialImpl) then) =
      __$$LearningInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningInitialImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningInitialImpl>
    implements _$$LearningInitialImplCopyWith<$Res> {
  __$$LearningInitialImplCopyWithImpl(
      _$LearningInitialImpl _value, $Res Function(_$LearningInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningInitialImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningInitialImpl implements _LearningInitial {
  const _$LearningInitialImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'LearningState.initial(topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningInitialImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningInitialImplCopyWith<_$LearningInitialImpl> get copyWith =>
      __$$LearningInitialImplCopyWithImpl<_$LearningInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return initial(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return initial?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LearningInitial implements LearningState {
  const factory _LearningInitial({required final List<Topic> topics}) =
      _$LearningInitialImpl;

  @override
  List<Topic> get topics;
  @override
  @JsonKey(ignore: true)
  _$$LearningInitialImplCopyWith<_$LearningInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningGotWordsForStudyImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningGotWordsForStudyImplCopyWith(
          _$LearningGotWordsForStudyImpl value,
          $Res Function(_$LearningGotWordsForStudyImpl) then) =
      __$$LearningGotWordsForStudyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningGotWordsForStudyImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningGotWordsForStudyImpl>
    implements _$$LearningGotWordsForStudyImplCopyWith<$Res> {
  __$$LearningGotWordsForStudyImplCopyWithImpl(
      _$LearningGotWordsForStudyImpl _value,
      $Res Function(_$LearningGotWordsForStudyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningGotWordsForStudyImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningGotWordsForStudyImpl implements _LearningGotWordsForStudy {
  const _$LearningGotWordsForStudyImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'LearningState.gotWordsForStudy(topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGotWordsForStudyImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGotWordsForStudyImplCopyWith<_$LearningGotWordsForStudyImpl>
      get copyWith => __$$LearningGotWordsForStudyImplCopyWithImpl<
          _$LearningGotWordsForStudyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return gotWordsForStudy(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return gotWordsForStudy?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) {
    if (gotWordsForStudy != null) {
      return gotWordsForStudy(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return gotWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return gotWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (gotWordsForStudy != null) {
      return gotWordsForStudy(this);
    }
    return orElse();
  }
}

abstract class _LearningGotWordsForStudy implements LearningState {
  const factory _LearningGotWordsForStudy({required final List<Topic> topics}) =
      _$LearningGotWordsForStudyImpl;

  @override
  List<Topic> get topics;
  @override
  @JsonKey(ignore: true)
  _$$LearningGotWordsForStudyImplCopyWith<_$LearningGotWordsForStudyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningFailedImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningFailedImplCopyWith(_$LearningFailedImpl value,
          $Res Function(_$LearningFailedImpl) then) =
      __$$LearningFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningFailedImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningFailedImpl>
    implements _$$LearningFailedImplCopyWith<$Res> {
  __$$LearningFailedImplCopyWithImpl(
      _$LearningFailedImpl _value, $Res Function(_$LearningFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningFailedImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningFailedImpl implements _LearningFailed {
  const _$LearningFailedImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'LearningState.failed(topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningFailedImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningFailedImplCopyWith<_$LearningFailedImpl> get copyWith =>
      __$$LearningFailedImplCopyWithImpl<_$LearningFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return failed(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return failed?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _LearningFailed implements LearningState {
  const factory _LearningFailed({required final List<Topic> topics}) =
      _$LearningFailedImpl;

  @override
  List<Topic> get topics;
  @override
  @JsonKey(ignore: true)
  _$$LearningFailedImplCopyWith<_$LearningFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LearningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWordsForStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWordsForStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWordsForStudy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWordsForStudy value) getWordsForStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWordsForStudy value)? getWordsForStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWordsForStudy value)? getWordsForStudy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningEventCopyWith<$Res> {
  factory $LearningEventCopyWith(
          LearningEvent value, $Res Function(LearningEvent) then) =
      _$LearningEventCopyWithImpl<$Res, LearningEvent>;
}

/// @nodoc
class _$LearningEventCopyWithImpl<$Res, $Val extends LearningEvent>
    implements $LearningEventCopyWith<$Res> {
  _$LearningEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWordsForStudyImplCopyWith<$Res> {
  factory _$$GetWordsForStudyImplCopyWith(_$GetWordsForStudyImpl value,
          $Res Function(_$GetWordsForStudyImpl) then) =
      __$$GetWordsForStudyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWordsForStudyImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetWordsForStudyImpl>
    implements _$$GetWordsForStudyImplCopyWith<$Res> {
  __$$GetWordsForStudyImplCopyWithImpl(_$GetWordsForStudyImpl _value,
      $Res Function(_$GetWordsForStudyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWordsForStudyImpl implements _GetWordsForStudy {
  const _$GetWordsForStudyImpl();

  @override
  String toString() {
    return 'LearningEvent.getWordsForStudy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWordsForStudyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWordsForStudy,
  }) {
    return getWordsForStudy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWordsForStudy,
  }) {
    return getWordsForStudy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWordsForStudy,
    required TResult orElse(),
  }) {
    if (getWordsForStudy != null) {
      return getWordsForStudy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWordsForStudy value) getWordsForStudy,
  }) {
    return getWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWordsForStudy value)? getWordsForStudy,
  }) {
    return getWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWordsForStudy value)? getWordsForStudy,
    required TResult orElse(),
  }) {
    if (getWordsForStudy != null) {
      return getWordsForStudy(this);
    }
    return orElse();
  }
}

abstract class _GetWordsForStudy implements LearningEvent {
  const factory _GetWordsForStudy() = _$GetWordsForStudyImpl;
}
