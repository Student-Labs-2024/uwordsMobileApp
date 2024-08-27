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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStateCopyWith<$Res> {
  factory $LearningStateCopyWith(
          LearningState value, $Res Function(LearningState) then) =
      _$LearningStateCopyWithImpl<$Res, LearningState>;
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res, $Val extends LearningState>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LearningInitialStateImplCopyWith<$Res> {
  factory _$$LearningInitialStateImplCopyWith(_$LearningInitialStateImpl value,
          $Res Function(_$LearningInitialStateImpl) then) =
      __$$LearningInitialStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningInitialStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningInitialStateImpl>
    implements _$$LearningInitialStateImplCopyWith<$Res> {
  __$$LearningInitialStateImplCopyWithImpl(_$LearningInitialStateImpl _value,
      $Res Function(_$LearningInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningInitialStateImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningInitialStateImpl
    with DiagnosticableTreeMixin
    implements _LearningInitialState {
  const _$LearningInitialStateImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.initial(topics: $topics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.initial'))
      ..add(DiagnosticsProperty('topics', topics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningInitialStateImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningInitialStateImplCopyWith<_$LearningInitialStateImpl>
      get copyWith =>
          __$$LearningInitialStateImplCopyWithImpl<_$LearningInitialStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return initial(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return initial?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
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
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LearningInitialState implements LearningState {
  const factory _LearningInitialState({required final List<Topic> topics}) =
      _$LearningInitialStateImpl;

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningInitialStateImplCopyWith<_$LearningInitialStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningGotWordsForStudyStateImplCopyWith<$Res> {
  factory _$$LearningGotWordsForStudyStateImplCopyWith(
          _$LearningGotWordsForStudyStateImpl value,
          $Res Function(_$LearningGotWordsForStudyStateImpl) then) =
      __$$LearningGotWordsForStudyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningGotWordsForStudyStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res,
        _$LearningGotWordsForStudyStateImpl>
    implements _$$LearningGotWordsForStudyStateImplCopyWith<$Res> {
  __$$LearningGotWordsForStudyStateImplCopyWithImpl(
      _$LearningGotWordsForStudyStateImpl _value,
      $Res Function(_$LearningGotWordsForStudyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningGotWordsForStudyStateImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningGotWordsForStudyStateImpl
    with DiagnosticableTreeMixin
    implements _LearningGotWordsForStudyState {
  const _$LearningGotWordsForStudyStateImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.gotWordsForStudy(topics: $topics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.gotWordsForStudy'))
      ..add(DiagnosticsProperty('topics', topics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGotWordsForStudyStateImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGotWordsForStudyStateImplCopyWith<
          _$LearningGotWordsForStudyStateImpl>
      get copyWith => __$$LearningGotWordsForStudyStateImplCopyWithImpl<
          _$LearningGotWordsForStudyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return gotWordsForStudy(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return gotWordsForStudy?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
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
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return gotWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return gotWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (gotWordsForStudy != null) {
      return gotWordsForStudy(this);
    }
    return orElse();
  }
}

abstract class _LearningGotWordsForStudyState implements LearningState {
  const factory _LearningGotWordsForStudyState(
          {required final List<Topic> topics}) =
      _$LearningGotWordsForStudyStateImpl;

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningGotWordsForStudyStateImplCopyWith<
          _$LearningGotWordsForStudyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningOpenMoreStateImplCopyWith<$Res> {
  factory _$$LearningOpenMoreStateImplCopyWith(
          _$LearningOpenMoreStateImpl value,
          $Res Function(_$LearningOpenMoreStateImpl) then) =
      __$$LearningOpenMoreStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$LearningOpenMoreStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningOpenMoreStateImpl>
    implements _$$LearningOpenMoreStateImplCopyWith<$Res> {
  __$$LearningOpenMoreStateImplCopyWithImpl(_$LearningOpenMoreStateImpl _value,
      $Res Function(_$LearningOpenMoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$LearningOpenMoreStateImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$LearningOpenMoreStateImpl
    with DiagnosticableTreeMixin
    implements _LearningOpenMoreState {
  const _$LearningOpenMoreStateImpl({required this.topic});

  @override
  final Topic topic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.openMore(topic: $topic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.openMore'))
      ..add(DiagnosticsProperty('topic', topic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningOpenMoreStateImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningOpenMoreStateImplCopyWith<_$LearningOpenMoreStateImpl>
      get copyWith => __$$LearningOpenMoreStateImplCopyWithImpl<
          _$LearningOpenMoreStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return openMore(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return openMore?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
    required TResult orElse(),
  }) {
    if (openMore != null) {
      return openMore(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return openMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return openMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (openMore != null) {
      return openMore(this);
    }
    return orElse();
  }
}

abstract class _LearningOpenMoreState implements LearningState {
  const factory _LearningOpenMoreState({required final Topic topic}) =
      _$LearningOpenMoreStateImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$LearningOpenMoreStateImplCopyWith<_$LearningOpenMoreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedSortImplCopyWith<$Res> {
  factory _$$ChangedSortImplCopyWith(
          _$ChangedSortImpl value, $Res Function(_$ChangedSortImpl) then) =
      __$$ChangedSortImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangedSortImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$ChangedSortImpl>
    implements _$$ChangedSortImplCopyWith<$Res> {
  __$$ChangedSortImplCopyWithImpl(
      _$ChangedSortImpl _value, $Res Function(_$ChangedSortImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangedSortImpl with DiagnosticableTreeMixin implements _ChangedSort {
  const _$ChangedSortImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.changedSort()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LearningState.changedSort'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangedSortImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return changedSort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return changedSort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
    required TResult orElse(),
  }) {
    if (changedSort != null) {
      return changedSort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return changedSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return changedSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (changedSort != null) {
      return changedSort(this);
    }
    return orElse();
  }
}

abstract class _ChangedSort implements LearningState {
  const factory _ChangedSort() = _$ChangedSortImpl;
}

/// @nodoc
abstract class _$$LearningFailedStateImplCopyWith<$Res> {
  factory _$$LearningFailedStateImplCopyWith(_$LearningFailedStateImpl value,
          $Res Function(_$LearningFailedStateImpl) then) =
      __$$LearningFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$LearningFailedStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningFailedStateImpl>
    implements _$$LearningFailedStateImplCopyWith<$Res> {
  __$$LearningFailedStateImplCopyWithImpl(_$LearningFailedStateImpl _value,
      $Res Function(_$LearningFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$LearningFailedStateImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$LearningFailedStateImpl
    with DiagnosticableTreeMixin
    implements _LearningFailedState {
  const _$LearningFailedStateImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.failed(topics: $topics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.failed'))
      ..add(DiagnosticsProperty('topics', topics));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningFailedStateImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningFailedStateImplCopyWith<_$LearningFailedStateImpl> get copyWith =>
      __$$LearningFailedStateImplCopyWithImpl<_$LearningFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return failed(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return failed?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
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
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _LearningFailedState implements LearningState {
  const factory _LearningFailedState({required final List<Topic> topics}) =
      _$LearningFailedStateImpl;

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningFailedStateImplCopyWith<_$LearningFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenSubtopicStateImplCopyWith<$Res> {
  factory _$$OpenSubtopicStateImplCopyWith(_$OpenSubtopicStateImpl value,
          $Res Function(_$OpenSubtopicStateImpl) then) =
      __$$OpenSubtopicStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$OpenSubtopicStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$OpenSubtopicStateImpl>
    implements _$$OpenSubtopicStateImplCopyWith<$Res> {
  __$$OpenSubtopicStateImplCopyWithImpl(_$OpenSubtopicStateImpl _value,
      $Res Function(_$OpenSubtopicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$OpenSubtopicStateImpl(
      subtopic: null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$OpenSubtopicStateImpl
    with DiagnosticableTreeMixin
    implements _OpenSubtopicState {
  const _$OpenSubtopicStateImpl({required this.subtopic});

  @override
  final Subtopic subtopic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.openSubtopic(subtopic: $subtopic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.openSubtopic'))
      ..add(DiagnosticsProperty('subtopic', subtopic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSubtopicStateImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSubtopicStateImplCopyWith<_$OpenSubtopicStateImpl> get copyWith =>
      __$$OpenSubtopicStateImplCopyWithImpl<_$OpenSubtopicStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
    required TResult Function(Subtopic subtopic) openSubtopic,
  }) {
    return openSubtopic(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
    TResult? Function(Subtopic subtopic)? openSubtopic,
  }) {
    return openSubtopic?.call(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    TResult Function(Subtopic subtopic)? openSubtopic,
    required TResult orElse(),
  }) {
    if (openSubtopic != null) {
      return openSubtopic(subtopic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitialState value) initial,
    required TResult Function(_LearningGotWordsForStudyState value)
        gotWordsForStudy,
    required TResult Function(_LearningOpenMoreState value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailedState value) failed,
    required TResult Function(_OpenSubtopicState value) openSubtopic,
  }) {
    return openSubtopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitialState value)? initial,
    TResult? Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMoreState value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailedState value)? failed,
    TResult? Function(_OpenSubtopicState value)? openSubtopic,
  }) {
    return openSubtopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitialState value)? initial,
    TResult Function(_LearningGotWordsForStudyState value)? gotWordsForStudy,
    TResult Function(_LearningOpenMoreState value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailedState value)? failed,
    TResult Function(_OpenSubtopicState value)? openSubtopic,
    required TResult orElse(),
  }) {
    if (openSubtopic != null) {
      return openSubtopic(this);
    }
    return orElse();
  }
}

abstract class _OpenSubtopicState implements LearningState {
  const factory _OpenSubtopicState({required final Subtopic subtopic}) =
      _$OpenSubtopicStateImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$OpenSubtopicStateImplCopyWith<_$OpenSubtopicStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LearningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
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
abstract class _$$GetTopicsEventImplCopyWith<$Res> {
  factory _$$GetTopicsEventImplCopyWith(_$GetTopicsEventImpl value,
          $Res Function(_$GetTopicsEventImpl) then) =
      __$$GetTopicsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String inProgressTopicName});
}

/// @nodoc
class __$$GetTopicsEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetTopicsEventImpl>
    implements _$$GetTopicsEventImplCopyWith<$Res> {
  __$$GetTopicsEventImplCopyWithImpl(
      _$GetTopicsEventImpl _value, $Res Function(_$GetTopicsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgressTopicName = null,
  }) {
    return _then(_$GetTopicsEventImpl(
      null == inProgressTopicName
          ? _value.inProgressTopicName
          : inProgressTopicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTopicsEventImpl
    with DiagnosticableTreeMixin
    implements _GetTopicsEvent {
  const _$GetTopicsEventImpl(this.inProgressTopicName);

  @override
  final String inProgressTopicName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.getTopics(inProgressTopicName: $inProgressTopicName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.getTopics'))
      ..add(DiagnosticsProperty('inProgressTopicName', inProgressTopicName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTopicsEventImpl &&
            (identical(other.inProgressTopicName, inProgressTopicName) ||
                other.inProgressTopicName == inProgressTopicName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inProgressTopicName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTopicsEventImplCopyWith<_$GetTopicsEventImpl> get copyWith =>
      __$$GetTopicsEventImplCopyWithImpl<_$GetTopicsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return getTopics(inProgressTopicName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return getTopics?.call(inProgressTopicName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics(inProgressTopicName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return getTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return getTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics(this);
    }
    return orElse();
  }
}

abstract class _GetTopicsEvent implements LearningEvent {
  const factory _GetTopicsEvent(final String inProgressTopicName) =
      _$GetTopicsEventImpl;

  String get inProgressTopicName;
  @JsonKey(ignore: true)
  _$$GetTopicsEventImplCopyWith<_$GetTopicsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWordsByTopicEventImplCopyWith<$Res> {
  factory _$$GetWordsByTopicEventImplCopyWith(_$GetWordsByTopicEventImpl value,
          $Res Function(_$GetWordsByTopicEventImpl) then) =
      __$$GetWordsByTopicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$GetWordsByTopicEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetWordsByTopicEventImpl>
    implements _$$GetWordsByTopicEventImplCopyWith<$Res> {
  __$$GetWordsByTopicEventImplCopyWithImpl(_$GetWordsByTopicEventImpl _value,
      $Res Function(_$GetWordsByTopicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$GetWordsByTopicEventImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$GetWordsByTopicEventImpl
    with DiagnosticableTreeMixin
    implements _GetWordsByTopicEvent {
  const _$GetWordsByTopicEventImpl(this.topic);

  @override
  final Topic topic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.getWordsByTopic(topic: $topic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.getWordsByTopic'))
      ..add(DiagnosticsProperty('topic', topic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWordsByTopicEventImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWordsByTopicEventImplCopyWith<_$GetWordsByTopicEventImpl>
      get copyWith =>
          __$$GetWordsByTopicEventImplCopyWithImpl<_$GetWordsByTopicEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return getWordsByTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return getWordsByTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (getWordsByTopic != null) {
      return getWordsByTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return getWordsByTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return getWordsByTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (getWordsByTopic != null) {
      return getWordsByTopic(this);
    }
    return orElse();
  }
}

abstract class _GetWordsByTopicEvent implements LearningEvent {
  const factory _GetWordsByTopicEvent(final Topic topic) =
      _$GetWordsByTopicEventImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$GetWordsByTopicEventImplCopyWith<_$GetWordsByTopicEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWordsBySubtopicEventImplCopyWith<$Res> {
  factory _$$GetWordsBySubtopicEventImplCopyWith(
          _$GetWordsBySubtopicEventImpl value,
          $Res Function(_$GetWordsBySubtopicEventImpl) then) =
      __$$GetWordsBySubtopicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$GetWordsBySubtopicEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetWordsBySubtopicEventImpl>
    implements _$$GetWordsBySubtopicEventImplCopyWith<$Res> {
  __$$GetWordsBySubtopicEventImplCopyWithImpl(
      _$GetWordsBySubtopicEventImpl _value,
      $Res Function(_$GetWordsBySubtopicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$GetWordsBySubtopicEventImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$GetWordsBySubtopicEventImpl
    with DiagnosticableTreeMixin
    implements _GetWordsBySubtopicEvent {
  const _$GetWordsBySubtopicEventImpl(this.subtopic);

  @override
  final Subtopic subtopic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.getWordsBySubtopic(subtopic: $subtopic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.getWordsBySubtopic'))
      ..add(DiagnosticsProperty('subtopic', subtopic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWordsBySubtopicEventImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWordsBySubtopicEventImplCopyWith<_$GetWordsBySubtopicEventImpl>
      get copyWith => __$$GetWordsBySubtopicEventImplCopyWithImpl<
          _$GetWordsBySubtopicEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return getWordsBySubtopic(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return getWordsBySubtopic?.call(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (getWordsBySubtopic != null) {
      return getWordsBySubtopic(subtopic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return getWordsBySubtopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return getWordsBySubtopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (getWordsBySubtopic != null) {
      return getWordsBySubtopic(this);
    }
    return orElse();
  }
}

abstract class _GetWordsBySubtopicEvent implements LearningEvent {
  const factory _GetWordsBySubtopicEvent(final Subtopic subtopic) =
      _$GetWordsBySubtopicEventImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$GetWordsBySubtopicEventImplCopyWith<_$GetWordsBySubtopicEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseTopicEventImplCopyWith<$Res> {
  factory _$$ChooseTopicEventImplCopyWith(_$ChooseTopicEventImpl value,
          $Res Function(_$ChooseTopicEventImpl) then) =
      __$$ChooseTopicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$ChooseTopicEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ChooseTopicEventImpl>
    implements _$$ChooseTopicEventImplCopyWith<$Res> {
  __$$ChooseTopicEventImplCopyWithImpl(_$ChooseTopicEventImpl _value,
      $Res Function(_$ChooseTopicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$ChooseTopicEventImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$ChooseTopicEventImpl
    with DiagnosticableTreeMixin
    implements _ChooseTopicEvent {
  const _$ChooseTopicEventImpl(this.topic);

  @override
  final Topic topic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.chooseTopic(topic: $topic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.chooseTopic'))
      ..add(DiagnosticsProperty('topic', topic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseTopicEventImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseTopicEventImplCopyWith<_$ChooseTopicEventImpl> get copyWith =>
      __$$ChooseTopicEventImplCopyWithImpl<_$ChooseTopicEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return chooseTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return chooseTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (chooseTopic != null) {
      return chooseTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return chooseTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return chooseTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (chooseTopic != null) {
      return chooseTopic(this);
    }
    return orElse();
  }
}

abstract class _ChooseTopicEvent implements LearningEvent {
  const factory _ChooseTopicEvent(final Topic topic) = _$ChooseTopicEventImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$ChooseTopicEventImplCopyWith<_$ChooseTopicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSubtopicSortEventImplCopyWith<$Res> {
  factory _$$UpdateSubtopicSortEventImplCopyWith(
          _$UpdateSubtopicSortEventImpl value,
          $Res Function(_$UpdateSubtopicSortEventImpl) then) =
      __$$UpdateSubtopicSortEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comparator<Subtopic> comparator});
}

/// @nodoc
class __$$UpdateSubtopicSortEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$UpdateSubtopicSortEventImpl>
    implements _$$UpdateSubtopicSortEventImplCopyWith<$Res> {
  __$$UpdateSubtopicSortEventImplCopyWithImpl(
      _$UpdateSubtopicSortEventImpl _value,
      $Res Function(_$UpdateSubtopicSortEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comparator = null,
  }) {
    return _then(_$UpdateSubtopicSortEventImpl(
      null == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as Comparator<Subtopic>,
    ));
  }
}

/// @nodoc

class _$UpdateSubtopicSortEventImpl
    with DiagnosticableTreeMixin
    implements _UpdateSubtopicSortEvent {
  const _$UpdateSubtopicSortEventImpl(this.comparator);

  @override
  final Comparator<Subtopic> comparator;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.updateSubtopicsSort(comparator: $comparator)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.updateSubtopicsSort'))
      ..add(DiagnosticsProperty('comparator', comparator));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubtopicSortEventImpl &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubtopicSortEventImplCopyWith<_$UpdateSubtopicSortEventImpl>
      get copyWith => __$$UpdateSubtopicSortEventImplCopyWithImpl<
          _$UpdateSubtopicSortEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return updateSubtopicsSort(comparator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return updateSubtopicsSort?.call(comparator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (updateSubtopicsSort != null) {
      return updateSubtopicsSort(comparator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return updateSubtopicsSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return updateSubtopicsSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (updateSubtopicsSort != null) {
      return updateSubtopicsSort(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubtopicSortEvent implements LearningEvent {
  const factory _UpdateSubtopicSortEvent(
      final Comparator<Subtopic> comparator) = _$UpdateSubtopicSortEventImpl;

  Comparator<Subtopic> get comparator;
  @JsonKey(ignore: true)
  _$$UpdateSubtopicSortEventImplCopyWith<_$UpdateSubtopicSortEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReverseSubtopicSortEventImplCopyWith<$Res> {
  factory _$$ReverseSubtopicSortEventImplCopyWith(
          _$ReverseSubtopicSortEventImpl value,
          $Res Function(_$ReverseSubtopicSortEventImpl) then) =
      __$$ReverseSubtopicSortEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReverseSubtopicSortEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ReverseSubtopicSortEventImpl>
    implements _$$ReverseSubtopicSortEventImplCopyWith<$Res> {
  __$$ReverseSubtopicSortEventImplCopyWithImpl(
      _$ReverseSubtopicSortEventImpl _value,
      $Res Function(_$ReverseSubtopicSortEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReverseSubtopicSortEventImpl
    with DiagnosticableTreeMixin
    implements _ReverseSubtopicSortEvent {
  const _$ReverseSubtopicSortEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.reverseSubtopicsSort()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LearningEvent.reverseSubtopicsSort'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReverseSubtopicSortEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return reverseSubtopicsSort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return reverseSubtopicsSort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (reverseSubtopicsSort != null) {
      return reverseSubtopicsSort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return reverseSubtopicsSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return reverseSubtopicsSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (reverseSubtopicsSort != null) {
      return reverseSubtopicsSort(this);
    }
    return orElse();
  }
}

abstract class _ReverseSubtopicSortEvent implements LearningEvent {
  const factory _ReverseSubtopicSortEvent() = _$ReverseSubtopicSortEventImpl;
}

/// @nodoc
abstract class _$$ReturnToAllTopicsEventImplCopyWith<$Res> {
  factory _$$ReturnToAllTopicsEventImplCopyWith(
          _$ReturnToAllTopicsEventImpl value,
          $Res Function(_$ReturnToAllTopicsEventImpl) then) =
      __$$ReturnToAllTopicsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReturnToAllTopicsEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ReturnToAllTopicsEventImpl>
    implements _$$ReturnToAllTopicsEventImplCopyWith<$Res> {
  __$$ReturnToAllTopicsEventImplCopyWithImpl(
      _$ReturnToAllTopicsEventImpl _value,
      $Res Function(_$ReturnToAllTopicsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReturnToAllTopicsEventImpl
    with DiagnosticableTreeMixin
    implements _ReturnToAllTopicsEvent {
  const _$ReturnToAllTopicsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.returnToAllTopics()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LearningEvent.returnToAllTopics'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnToAllTopicsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return returnToAllTopics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return returnToAllTopics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (returnToAllTopics != null) {
      return returnToAllTopics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return returnToAllTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return returnToAllTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (returnToAllTopics != null) {
      return returnToAllTopics(this);
    }
    return orElse();
  }
}

abstract class _ReturnToAllTopicsEvent implements LearningEvent {
  const factory _ReturnToAllTopicsEvent() = _$ReturnToAllTopicsEventImpl;
}

/// @nodoc
abstract class _$$SortWordsEventImplCopyWith<$Res> {
  factory _$$SortWordsEventImplCopyWith(_$SortWordsEventImpl value,
          $Res Function(_$SortWordsEventImpl) then) =
      __$$SortWordsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic, Comparator<WordInfo> comparator});
}

/// @nodoc
class __$$SortWordsEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$SortWordsEventImpl>
    implements _$$SortWordsEventImplCopyWith<$Res> {
  __$$SortWordsEventImplCopyWithImpl(
      _$SortWordsEventImpl _value, $Res Function(_$SortWordsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
    Object? comparator = null,
  }) {
    return _then(_$SortWordsEventImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
      null == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as Comparator<WordInfo>,
    ));
  }
}

/// @nodoc

class _$SortWordsEventImpl
    with DiagnosticableTreeMixin
    implements _SortWordsEvent {
  const _$SortWordsEventImpl(this.subtopic, this.comparator);

  @override
  final Subtopic subtopic;
  @override
  final Comparator<WordInfo> comparator;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.sortWords(subtopic: $subtopic, comparator: $comparator)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.sortWords'))
      ..add(DiagnosticsProperty('subtopic', subtopic))
      ..add(DiagnosticsProperty('comparator', comparator));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortWordsEventImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic, comparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortWordsEventImplCopyWith<_$SortWordsEventImpl> get copyWith =>
      __$$SortWordsEventImplCopyWithImpl<_$SortWordsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return sortWords(subtopic, comparator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return sortWords?.call(subtopic, comparator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (sortWords != null) {
      return sortWords(subtopic, comparator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return sortWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return sortWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (sortWords != null) {
      return sortWords(this);
    }
    return orElse();
  }
}

abstract class _SortWordsEvent implements LearningEvent {
  const factory _SortWordsEvent(
          final Subtopic subtopic, final Comparator<WordInfo> comparator) =
      _$SortWordsEventImpl;

  Subtopic get subtopic;
  Comparator<WordInfo> get comparator;
  @JsonKey(ignore: true)
  _$$SortWordsEventImplCopyWith<_$SortWordsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWordEventImplCopyWith<$Res> {
  factory _$$DeleteWordEventImplCopyWith(_$DeleteWordEventImpl value,
          $Res Function(_$DeleteWordEventImpl) then) =
      __$$DeleteWordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WordInfo wordInfo, Subtopic subtopic});
}

/// @nodoc
class __$$DeleteWordEventImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$DeleteWordEventImpl>
    implements _$$DeleteWordEventImplCopyWith<$Res> {
  __$$DeleteWordEventImplCopyWithImpl(
      _$DeleteWordEventImpl _value, $Res Function(_$DeleteWordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordInfo = null,
    Object? subtopic = null,
  }) {
    return _then(_$DeleteWordEventImpl(
      null == wordInfo
          ? _value.wordInfo
          : wordInfo // ignore: cast_nullable_to_non_nullable
              as WordInfo,
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$DeleteWordEventImpl
    with DiagnosticableTreeMixin
    implements _DeleteWordEvent {
  const _$DeleteWordEventImpl(this.wordInfo, this.subtopic);

  @override
  final WordInfo wordInfo;
  @override
  final Subtopic subtopic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.deleteWord(wordInfo: $wordInfo, subtopic: $subtopic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.deleteWord'))
      ..add(DiagnosticsProperty('wordInfo', wordInfo))
      ..add(DiagnosticsProperty('subtopic', subtopic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWordEventImpl &&
            (identical(other.wordInfo, wordInfo) ||
                other.wordInfo == wordInfo) &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordInfo, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWordEventImplCopyWith<_$DeleteWordEventImpl> get copyWith =>
      __$$DeleteWordEventImplCopyWithImpl<_$DeleteWordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
    required TResult Function(
            Subtopic subtopic, Comparator<WordInfo> comparator)
        sortWords,
    required TResult Function(WordInfo wordInfo, Subtopic subtopic) deleteWord,
  }) {
    return deleteWord(wordInfo, subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String inProgressTopicName)? getTopics,
    TResult? Function(Topic topic)? getWordsByTopic,
    TResult? Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult? Function()? reverseSubtopicsSort,
    TResult? Function()? returnToAllTopics,
    TResult? Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult? Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
  }) {
    return deleteWord?.call(wordInfo, subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String inProgressTopicName)? getTopics,
    TResult Function(Topic topic)? getWordsByTopic,
    TResult Function(Subtopic subtopic)? getWordsBySubtopic,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function(Comparator<Subtopic> comparator)? updateSubtopicsSort,
    TResult Function()? reverseSubtopicsSort,
    TResult Function()? returnToAllTopics,
    TResult Function(Subtopic subtopic, Comparator<WordInfo> comparator)?
        sortWords,
    TResult Function(WordInfo wordInfo, Subtopic subtopic)? deleteWord,
    required TResult orElse(),
  }) {
    if (deleteWord != null) {
      return deleteWord(wordInfo, subtopic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopicsEvent value) getTopics,
    required TResult Function(_GetWordsByTopicEvent value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopicEvent value)
        getWordsBySubtopic,
    required TResult Function(_ChooseTopicEvent value) chooseTopic,
    required TResult Function(_UpdateSubtopicSortEvent value)
        updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSortEvent value)
        reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopicsEvent value) returnToAllTopics,
    required TResult Function(_SortWordsEvent value) sortWords,
    required TResult Function(_DeleteWordEvent value) deleteWord,
  }) {
    return deleteWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopicsEvent value)? getTopics,
    TResult? Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopicEvent value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult? Function(_SortWordsEvent value)? sortWords,
    TResult? Function(_DeleteWordEvent value)? deleteWord,
  }) {
    return deleteWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopicsEvent value)? getTopics,
    TResult Function(_GetWordsByTopicEvent value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopicEvent value)? getWordsBySubtopic,
    TResult Function(_ChooseTopicEvent value)? chooseTopic,
    TResult Function(_UpdateSubtopicSortEvent value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSortEvent value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopicsEvent value)? returnToAllTopics,
    TResult Function(_SortWordsEvent value)? sortWords,
    TResult Function(_DeleteWordEvent value)? deleteWord,
    required TResult orElse(),
  }) {
    if (deleteWord != null) {
      return deleteWord(this);
    }
    return orElse();
  }
}

abstract class _DeleteWordEvent implements LearningEvent {
  const factory _DeleteWordEvent(
      final WordInfo wordInfo, final Subtopic subtopic) = _$DeleteWordEventImpl;

  WordInfo get wordInfo;
  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$DeleteWordEventImplCopyWith<_$DeleteWordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
