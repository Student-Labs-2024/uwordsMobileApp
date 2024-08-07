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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Topic> topics)? initial,
    TResult? Function(List<Topic> topics)? gotWordsForStudy,
    TResult? Function(Topic topic)? openMore,
    TResult? Function()? changedSort,
    TResult? Function(List<Topic> topics)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Topic> topics)? initial,
    TResult Function(List<Topic> topics)? gotWordsForStudy,
    TResult Function(Topic topic)? openMore,
    TResult Function()? changedSort,
    TResult Function(List<Topic> topics)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
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
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
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
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
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
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
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
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return gotWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return gotWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
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
abstract class _$$LearningOpenMoreImplCopyWith<$Res> {
  factory _$$LearningOpenMoreImplCopyWith(_$LearningOpenMoreImpl value,
          $Res Function(_$LearningOpenMoreImpl) then) =
      __$$LearningOpenMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$LearningOpenMoreImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningOpenMoreImpl>
    implements _$$LearningOpenMoreImplCopyWith<$Res> {
  __$$LearningOpenMoreImplCopyWithImpl(_$LearningOpenMoreImpl _value,
      $Res Function(_$LearningOpenMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$LearningOpenMoreImpl(
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$LearningOpenMoreImpl
    with DiagnosticableTreeMixin
    implements _LearningOpenMore {
  const _$LearningOpenMoreImpl({required this.topic});

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
            other is _$LearningOpenMoreImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningOpenMoreImplCopyWith<_$LearningOpenMoreImpl> get copyWith =>
      __$$LearningOpenMoreImplCopyWithImpl<_$LearningOpenMoreImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Topic> topics) initial,
    required TResult Function(List<Topic> topics) gotWordsForStudy,
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
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
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return openMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return openMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (openMore != null) {
      return openMore(this);
    }
    return orElse();
  }
}

abstract class _LearningOpenMore implements LearningState {
  const factory _LearningOpenMore({required final Topic topic}) =
      _$LearningOpenMoreImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$LearningOpenMoreImplCopyWith<_$LearningOpenMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return changedSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return changedSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
    TResult Function(_LearningFailed value)? failed,
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
    required TResult Function(Topic topic) openMore,
    required TResult Function() changedSort,
    required TResult Function(List<Topic> topics) failed,
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
    required TResult Function(_LearningOpenMore value) openMore,
    required TResult Function(_ChangedSort value) changedSort,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningOpenMore value)? openMore,
    TResult? Function(_ChangedSort value)? changedSort,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningOpenMore value)? openMore,
    TResult Function(_ChangedSort value)? changedSort,
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
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
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
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
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
  @useResult
  $Res call({String inProgressTopicName});
}

/// @nodoc
class __$$GetTopicsImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetTopicsImpl>
    implements _$$GetTopicsImplCopyWith<$Res> {
  __$$GetTopicsImplCopyWithImpl(
      _$GetTopicsImpl _value, $Res Function(_$GetTopicsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgressTopicName = null,
  }) {
    return _then(_$GetTopicsImpl(
      null == inProgressTopicName
          ? _value.inProgressTopicName
          : inProgressTopicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTopicsImpl with DiagnosticableTreeMixin implements _GetTopics {
  const _$GetTopicsImpl(this.inProgressTopicName);

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
            other is _$GetTopicsImpl &&
            (identical(other.inProgressTopicName, inProgressTopicName) ||
                other.inProgressTopicName == inProgressTopicName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inProgressTopicName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTopicsImplCopyWith<_$GetTopicsImpl> get copyWith =>
      __$$GetTopicsImplCopyWithImpl<_$GetTopicsImpl>(this, _$identity);

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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return getTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return getTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
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
  const factory _GetTopics(final String inProgressTopicName) = _$GetTopicsImpl;

  String get inProgressTopicName;
  @JsonKey(ignore: true)
  _$$GetTopicsImplCopyWith<_$GetTopicsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWordsByTopicImplCopyWith<$Res> {
  factory _$$GetWordsByTopicImplCopyWith(_$GetWordsByTopicImpl value,
          $Res Function(_$GetWordsByTopicImpl) then) =
      __$$GetWordsByTopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$GetWordsByTopicImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetWordsByTopicImpl>
    implements _$$GetWordsByTopicImplCopyWith<$Res> {
  __$$GetWordsByTopicImplCopyWithImpl(
      _$GetWordsByTopicImpl _value, $Res Function(_$GetWordsByTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$GetWordsByTopicImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$GetWordsByTopicImpl
    with DiagnosticableTreeMixin
    implements _GetWordsByTopic {
  const _$GetWordsByTopicImpl(this.topic);

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
            other is _$GetWordsByTopicImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWordsByTopicImplCopyWith<_$GetWordsByTopicImpl> get copyWith =>
      __$$GetWordsByTopicImplCopyWithImpl<_$GetWordsByTopicImpl>(
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return getWordsByTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return getWordsByTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (getWordsByTopic != null) {
      return getWordsByTopic(this);
    }
    return orElse();
  }
}

abstract class _GetWordsByTopic implements LearningEvent {
  const factory _GetWordsByTopic(final Topic topic) = _$GetWordsByTopicImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$GetWordsByTopicImplCopyWith<_$GetWordsByTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWordsBySubtopicImplCopyWith<$Res> {
  factory _$$GetWordsBySubtopicImplCopyWith(_$GetWordsBySubtopicImpl value,
          $Res Function(_$GetWordsBySubtopicImpl) then) =
      __$$GetWordsBySubtopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$GetWordsBySubtopicImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetWordsBySubtopicImpl>
    implements _$$GetWordsBySubtopicImplCopyWith<$Res> {
  __$$GetWordsBySubtopicImplCopyWithImpl(_$GetWordsBySubtopicImpl _value,
      $Res Function(_$GetWordsBySubtopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$GetWordsBySubtopicImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$GetWordsBySubtopicImpl
    with DiagnosticableTreeMixin
    implements _GetWordsBySubtopic {
  const _$GetWordsBySubtopicImpl(this.subtopic);

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
            other is _$GetWordsBySubtopicImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWordsBySubtopicImplCopyWith<_$GetWordsBySubtopicImpl> get copyWith =>
      __$$GetWordsBySubtopicImplCopyWithImpl<_$GetWordsBySubtopicImpl>(
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return getWordsBySubtopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return getWordsBySubtopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (getWordsBySubtopic != null) {
      return getWordsBySubtopic(this);
    }
    return orElse();
  }
}

abstract class _GetWordsBySubtopic implements LearningEvent {
  const factory _GetWordsBySubtopic(final Subtopic subtopic) =
      _$GetWordsBySubtopicImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$GetWordsBySubtopicImplCopyWith<_$GetWordsBySubtopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
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
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return chooseTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return chooseTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
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
abstract class _$$UpdateSubtopicSortImplCopyWith<$Res> {
  factory _$$UpdateSubtopicSortImplCopyWith(_$UpdateSubtopicSortImpl value,
          $Res Function(_$UpdateSubtopicSortImpl) then) =
      __$$UpdateSubtopicSortImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comparator<Subtopic> comparator});
}

/// @nodoc
class __$$UpdateSubtopicSortImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$UpdateSubtopicSortImpl>
    implements _$$UpdateSubtopicSortImplCopyWith<$Res> {
  __$$UpdateSubtopicSortImplCopyWithImpl(_$UpdateSubtopicSortImpl _value,
      $Res Function(_$UpdateSubtopicSortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comparator = null,
  }) {
    return _then(_$UpdateSubtopicSortImpl(
      null == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as Comparator<Subtopic>,
    ));
  }
}

/// @nodoc

class _$UpdateSubtopicSortImpl
    with DiagnosticableTreeMixin
    implements _UpdateSubtopicSort {
  const _$UpdateSubtopicSortImpl(this.comparator);

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
            other is _$UpdateSubtopicSortImpl &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubtopicSortImplCopyWith<_$UpdateSubtopicSortImpl> get copyWith =>
      __$$UpdateSubtopicSortImplCopyWithImpl<_$UpdateSubtopicSortImpl>(
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return updateSubtopicsSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return updateSubtopicsSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (updateSubtopicsSort != null) {
      return updateSubtopicsSort(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubtopicSort implements LearningEvent {
  const factory _UpdateSubtopicSort(final Comparator<Subtopic> comparator) =
      _$UpdateSubtopicSortImpl;

  Comparator<Subtopic> get comparator;
  @JsonKey(ignore: true)
  _$$UpdateSubtopicSortImplCopyWith<_$UpdateSubtopicSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReverseSubtopicSortImplCopyWith<$Res> {
  factory _$$ReverseSubtopicSortImplCopyWith(_$ReverseSubtopicSortImpl value,
          $Res Function(_$ReverseSubtopicSortImpl) then) =
      __$$ReverseSubtopicSortImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReverseSubtopicSortImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$ReverseSubtopicSortImpl>
    implements _$$ReverseSubtopicSortImplCopyWith<$Res> {
  __$$ReverseSubtopicSortImplCopyWithImpl(_$ReverseSubtopicSortImpl _value,
      $Res Function(_$ReverseSubtopicSortImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReverseSubtopicSortImpl
    with DiagnosticableTreeMixin
    implements _ReverseSubtopicSort {
  const _$ReverseSubtopicSortImpl();

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
            other is _$ReverseSubtopicSortImpl);
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
    required TResult Function(_GetTopics value) getTopics,
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return reverseSubtopicsSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return reverseSubtopicsSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult Function(_ReturnToAllTopics value)? returnToAllTopics,
    required TResult orElse(),
  }) {
    if (reverseSubtopicsSort != null) {
      return reverseSubtopicsSort(this);
    }
    return orElse();
  }
}

abstract class _ReverseSubtopicSort implements LearningEvent {
  const factory _ReverseSubtopicSort() = _$ReverseSubtopicSortImpl;
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
    required TResult Function(String inProgressTopicName) getTopics,
    required TResult Function(Topic topic) getWordsByTopic,
    required TResult Function(Subtopic subtopic) getWordsBySubtopic,
    required TResult Function(Topic topic) chooseTopic,
    required TResult Function(Comparator<Subtopic> comparator)
        updateSubtopicsSort,
    required TResult Function() reverseSubtopicsSort,
    required TResult Function() returnToAllTopics,
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
    required TResult Function(_GetWordsByTopic value) getWordsByTopic,
    required TResult Function(_GetWordsBySubtopic value) getWordsBySubtopic,
    required TResult Function(_ChooseTopic value) chooseTopic,
    required TResult Function(_UpdateSubtopicSort value) updateSubtopicsSort,
    required TResult Function(_ReverseSubtopicSort value) reverseSubtopicsSort,
    required TResult Function(_ReturnToAllTopics value) returnToAllTopics,
  }) {
    return returnToAllTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopics value)? getTopics,
    TResult? Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult? Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult? Function(_ChooseTopic value)? chooseTopic,
    TResult? Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult? Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
    TResult? Function(_ReturnToAllTopics value)? returnToAllTopics,
  }) {
    return returnToAllTopics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopics value)? getTopics,
    TResult Function(_GetWordsByTopic value)? getWordsByTopic,
    TResult Function(_GetWordsBySubtopic value)? getWordsBySubtopic,
    TResult Function(_ChooseTopic value)? chooseTopic,
    TResult Function(_UpdateSubtopicSort value)? updateSubtopicsSort,
    TResult Function(_ReverseSubtopicSort value)? reverseSubtopicsSort,
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
