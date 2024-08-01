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
    required TResult Function(Topic topic) choseTopic,
    required TResult Function(List<Topic> topics) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? choseTopic,
    TResult? Function(List<Topic> topics)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? choseTopic,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningChoseTopic value) choseTopic,
    required TResult Function(_LearningFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningChoseTopic value)? choseTopic,
    TResult? Function(_LearningFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningChoseTopic value)? choseTopic,
    TResult Function(_LearningFailed value)? failed,
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
abstract class _$$LearningInitialImplCopyWith<$Res> {
  factory _$$LearningInitialImplCopyWith(_$LearningInitialImpl value,
          $Res Function(_$LearningInitialImpl) then) =
      __$$LearningInitialImplCopyWithImpl<$Res>;
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

class _$LearningInitialImpl
    with DiagnosticableTreeMixin
    implements _LearningInitial {
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
    required TResult Function(Topic topic) choseTopic,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return initial(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? choseTopic,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return initial?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? choseTopic,
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
    required TResult Function(_LearningChoseTopic value) choseTopic,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningChoseTopic value)? choseTopic,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningChoseTopic value)? choseTopic,
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

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningInitialImplCopyWith<_$LearningInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningGotWordsForStudyImplCopyWith<$Res> {
  factory _$$LearningGotWordsForStudyImplCopyWith(
          _$LearningGotWordsForStudyImpl value,
          $Res Function(_$LearningGotWordsForStudyImpl) then) =
      __$$LearningGotWordsForStudyImplCopyWithImpl<$Res>;
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

class _$LearningGotWordsForStudyImpl
    with DiagnosticableTreeMixin
    implements _LearningGotWordsForStudy {
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
    required TResult Function(Topic topic) choseTopic,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return gotWordsForStudy(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? choseTopic,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return gotWordsForStudy?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? choseTopic,
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
    required TResult Function(_LearningChoseTopic value) choseTopic,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return gotWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningChoseTopic value)? choseTopic,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return gotWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningChoseTopic value)? choseTopic,
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

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningGotWordsForStudyImplCopyWith<_$LearningGotWordsForStudyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningChoseTopicImplCopyWith<$Res> {
  factory _$$LearningChoseTopicImplCopyWith(_$LearningChoseTopicImpl value,
          $Res Function(_$LearningChoseTopicImpl) then) =
      __$$LearningChoseTopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$LearningChoseTopicImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningChoseTopicImpl>
    implements _$$LearningChoseTopicImplCopyWith<$Res> {
  __$$LearningChoseTopicImplCopyWithImpl(_$LearningChoseTopicImpl _value,
      $Res Function(_$LearningChoseTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$LearningChoseTopicImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$LearningChoseTopicImpl
    with DiagnosticableTreeMixin
    implements _LearningChoseTopic {
  const _$LearningChoseTopicImpl({required this.topic});

  @override
  final Topic topic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState.choseTopic(topic: $topic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState.choseTopic'))
      ..add(DiagnosticsProperty('topic', topic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningChoseTopicImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningChoseTopicImplCopyWith<_$LearningChoseTopicImpl> get copyWith =>
      __$$LearningChoseTopicImplCopyWithImpl<_$LearningChoseTopicImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) choseTopic,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return choseTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? choseTopic,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return choseTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? choseTopic,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) {
    if (choseTopic != null) {
      return choseTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningChoseTopic value) choseTopic,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return choseTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningChoseTopic value)? choseTopic,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return choseTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningChoseTopic value)? choseTopic,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (choseTopic != null) {
      return choseTopic(this);
    }
    return orElse();
  }
}

abstract class _LearningChoseTopic implements LearningState {
  const factory _LearningChoseTopic({required final Topic topic}) =
      _$LearningChoseTopicImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$LearningChoseTopicImplCopyWith<_$LearningChoseTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningFailedImplCopyWith<$Res> {
  factory _$$LearningFailedImplCopyWith(_$LearningFailedImpl value,
          $Res Function(_$LearningFailedImpl) then) =
      __$$LearningFailedImplCopyWithImpl<$Res>;
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

class _$LearningFailedImpl
    with DiagnosticableTreeMixin
    implements _LearningFailed {
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
    required TResult Function(Topic topic) choseTopic,
    required TResult Function(List<Topic> topics) failed,
  }) {
    return failed(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? choseTopic,
    TResult? Function(List<Topic> topics)? failed,
  }) {
    return failed?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? choseTopic,
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
    required TResult Function(_LearningChoseTopic value) choseTopic,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningChoseTopic value)? choseTopic,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningChoseTopic value)? choseTopic,
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

  List<Topic> get topics;
  @JsonKey(ignore: true)
  _$$LearningFailedImplCopyWith<_$LearningFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LearningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function() returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopics,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function()? returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function()? returnToAllTopics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
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
abstract class _$$GetTopicsImplCopyWith<$Res> {
  factory _$$GetTopicsImplCopyWith(
          _$GetTopicsImpl value, $Res Function(_$GetTopicsImpl) then) =
      __$$GetTopicsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopicsImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetTopicsImpl>
    implements _$$GetTopicsImplCopyWith<$Res> {
  __$$GetTopicsImplCopyWithImpl(
      _$GetTopicsImpl _value, $Res Function(_$GetTopicsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopicsImpl with DiagnosticableTreeMixin implements _GetTopics {
  const _$GetTopicsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.getTopics()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LearningEvent.getTopics'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopicsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function() returnToAllTopics,
  }) {
    return getTopics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopics,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function()? returnToAllTopics,
  }) {
    return getTopics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function()? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return getTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return getTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (getTopics != null) {
      return getTopics(this);
    }
    return orElse();
  }
}

abstract class _GetTopics implements LearningEvent {
  const factory _GetTopics() = _$GetTopicsImpl;
}

/// @nodoc
abstract class _$$ChooseTopicImplCopyWith<$Res> {
  factory _$$ChooseTopicImplCopyWith(
          _$ChooseTopicImpl value, $Res Function(_$ChooseTopicImpl) then) =
      __$$ChooseTopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$ChooseTopicImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ChooseTopicImpl>
    implements _$$ChooseTopicImplCopyWith<$Res> {
  __$$ChooseTopicImplCopyWithImpl(
      _$ChooseTopicImpl _value, $Res Function(_$ChooseTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$ChooseTopicImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$ChooseTopicImpl with DiagnosticableTreeMixin implements _ChooseTopic {
  const _$ChooseTopicImpl(this.topic);

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
            other is _$ChooseTopicImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseTopicImplCopyWith<_$ChooseTopicImpl> get copyWith =>
      __$$ChooseTopicImplCopyWithImpl<_$ChooseTopicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function() returnToAllTopics,
  }) {
    return chooseTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopics,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function()? returnToAllTopics,
  }) {
    return chooseTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function()? returnToAllTopics,
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return chooseTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return chooseTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (chooseTopic != null) {
      return chooseTopic(this);
    }
    return orElse();
  }
}

abstract class _ChooseTopic implements LearningEvent {
  const factory _ChooseTopic(final Topic topic) = _$ChooseTopicImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$ChooseTopicImplCopyWith<_$ChooseTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnToAllTopicsImplCopyWith<$Res> {
  factory _$$ReturnToAllTopicsImplCopyWith(_$ReturnToAllTopicsImpl value,
          $Res Function(_$ReturnToAllTopicsImpl) then) =
      __$$ReturnToAllTopicsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReturnToAllTopicsImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ReturnToAllTopicsImpl>
    implements _$$ReturnToAllTopicsImplCopyWith<$Res> {
  __$$ReturnToAllTopicsImplCopyWithImpl(_$ReturnToAllTopicsImpl _value,
      $Res Function(_$ReturnToAllTopicsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReturnToAllTopicsImpl
    with DiagnosticableTreeMixin
    implements _ReturnToAllTopics {
  const _$ReturnToAllTopicsImpl();

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
        (other.runtimeType == runtimeType && other is _$ReturnToAllTopicsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTopics,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function() returnToAllTopics,
  }) {
    return returnToAllTopics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTopics,
    TResult? Function(Topic topic)? chooseTopic,
    TResult? Function()? returnToAllTopics,
  }) {
    return returnToAllTopics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTopics,
    TResult Function(Topic topic)? chooseTopic,
    TResult Function()? returnToAllTopics,
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return returnToAllTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return returnToAllTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (returnToAllTopics != null) {
      return returnToAllTopics(this);
    }
    return orElse();
  }
}

abstract class _ReturnToAllTopics implements LearningEvent {
  const factory _ReturnToAllTopics() = _$ReturnToAllTopicsImpl;
}
