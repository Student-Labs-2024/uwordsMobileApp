// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingState {
  List<WordModel> get words => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) loading,
    required TResult Function(List<WordModel> words) ready,
    required TResult Function(List<WordModel> words) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? loading,
    TResult? Function(List<WordModel> words)? ready,
    TResult? Function(List<WordModel> words)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? loading,
    TResult Function(List<WordModel> words)? ready,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitial value) initial,
    required TResult Function(_TrainingIsLoading value) loading,
    required TResult Function(_TrainingReadyToStudy value) ready,
    required TResult Function(_TrainingFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitial value)? initial,
    TResult? Function(_TrainingIsLoading value)? loading,
    TResult? Function(_TrainingReadyToStudy value)? ready,
    TResult? Function(_TrainingFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitial value)? initial,
    TResult Function(_TrainingIsLoading value)? loading,
    TResult Function(_TrainingReadyToStudy value)? ready,
    TResult Function(_TrainingFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingStateCopyWith<TrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStateCopyWith<$Res> {
  factory $TrainingStateCopyWith(
          TrainingState value, $Res Function(TrainingState) then) =
      _$TrainingStateCopyWithImpl<$Res, TrainingState>;
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class _$TrainingStateCopyWithImpl<$Res, $Val extends TrainingState>
    implements $TrainingStateCopyWith<$Res> {
  _$TrainingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingInitialImplCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory _$$TrainingInitialImplCopyWith(_$TrainingInitialImpl value,
          $Res Function(_$TrainingInitialImpl) then) =
      __$$TrainingInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class __$$TrainingInitialImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingInitialImpl>
    implements _$$TrainingInitialImplCopyWith<$Res> {
  __$$TrainingInitialImplCopyWithImpl(
      _$TrainingInitialImpl _value, $Res Function(_$TrainingInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$TrainingInitialImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$TrainingInitialImpl implements _TrainingInitial {
  const _$TrainingInitialImpl({required final List<WordModel> words})
      : _words = words;

  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'TrainingState.initial(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingInitialImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingInitialImplCopyWith<_$TrainingInitialImpl> get copyWith =>
      __$$TrainingInitialImplCopyWithImpl<_$TrainingInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) loading,
    required TResult Function(List<WordModel> words) ready,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return initial(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? loading,
    TResult? Function(List<WordModel> words)? ready,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return initial?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? loading,
    TResult Function(List<WordModel> words)? ready,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitial value) initial,
    required TResult Function(_TrainingIsLoading value) loading,
    required TResult Function(_TrainingReadyToStudy value) ready,
    required TResult Function(_TrainingFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitial value)? initial,
    TResult? Function(_TrainingIsLoading value)? loading,
    TResult? Function(_TrainingReadyToStudy value)? ready,
    TResult? Function(_TrainingFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitial value)? initial,
    TResult Function(_TrainingIsLoading value)? loading,
    TResult Function(_TrainingReadyToStudy value)? ready,
    TResult Function(_TrainingFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TrainingInitial implements TrainingState {
  const factory _TrainingInitial({required final List<WordModel> words}) =
      _$TrainingInitialImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$TrainingInitialImplCopyWith<_$TrainingInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainingIsLoadingImplCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory _$$TrainingIsLoadingImplCopyWith(_$TrainingIsLoadingImpl value,
          $Res Function(_$TrainingIsLoadingImpl) then) =
      __$$TrainingIsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class __$$TrainingIsLoadingImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingIsLoadingImpl>
    implements _$$TrainingIsLoadingImplCopyWith<$Res> {
  __$$TrainingIsLoadingImplCopyWithImpl(_$TrainingIsLoadingImpl _value,
      $Res Function(_$TrainingIsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$TrainingIsLoadingImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$TrainingIsLoadingImpl implements _TrainingIsLoading {
  const _$TrainingIsLoadingImpl({required final List<WordModel> words})
      : _words = words;

  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'TrainingState.loading(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingIsLoadingImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingIsLoadingImplCopyWith<_$TrainingIsLoadingImpl> get copyWith =>
      __$$TrainingIsLoadingImplCopyWithImpl<_$TrainingIsLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) loading,
    required TResult Function(List<WordModel> words) ready,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return loading(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? loading,
    TResult? Function(List<WordModel> words)? ready,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return loading?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? loading,
    TResult Function(List<WordModel> words)? ready,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitial value) initial,
    required TResult Function(_TrainingIsLoading value) loading,
    required TResult Function(_TrainingReadyToStudy value) ready,
    required TResult Function(_TrainingFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitial value)? initial,
    TResult? Function(_TrainingIsLoading value)? loading,
    TResult? Function(_TrainingReadyToStudy value)? ready,
    TResult? Function(_TrainingFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitial value)? initial,
    TResult Function(_TrainingIsLoading value)? loading,
    TResult Function(_TrainingReadyToStudy value)? ready,
    TResult Function(_TrainingFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TrainingIsLoading implements TrainingState {
  const factory _TrainingIsLoading({required final List<WordModel> words}) =
      _$TrainingIsLoadingImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$TrainingIsLoadingImplCopyWith<_$TrainingIsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainingReadyToStudyImplCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory _$$TrainingReadyToStudyImplCopyWith(_$TrainingReadyToStudyImpl value,
          $Res Function(_$TrainingReadyToStudyImpl) then) =
      __$$TrainingReadyToStudyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class __$$TrainingReadyToStudyImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingReadyToStudyImpl>
    implements _$$TrainingReadyToStudyImplCopyWith<$Res> {
  __$$TrainingReadyToStudyImplCopyWithImpl(_$TrainingReadyToStudyImpl _value,
      $Res Function(_$TrainingReadyToStudyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$TrainingReadyToStudyImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$TrainingReadyToStudyImpl implements _TrainingReadyToStudy {
  const _$TrainingReadyToStudyImpl({required final List<WordModel> words})
      : _words = words;

  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'TrainingState.ready(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingReadyToStudyImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingReadyToStudyImplCopyWith<_$TrainingReadyToStudyImpl>
      get copyWith =>
          __$$TrainingReadyToStudyImplCopyWithImpl<_$TrainingReadyToStudyImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) loading,
    required TResult Function(List<WordModel> words) ready,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return ready(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? loading,
    TResult? Function(List<WordModel> words)? ready,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return ready?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? loading,
    TResult Function(List<WordModel> words)? ready,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitial value) initial,
    required TResult Function(_TrainingIsLoading value) loading,
    required TResult Function(_TrainingReadyToStudy value) ready,
    required TResult Function(_TrainingFailed value) failed,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitial value)? initial,
    TResult? Function(_TrainingIsLoading value)? loading,
    TResult? Function(_TrainingReadyToStudy value)? ready,
    TResult? Function(_TrainingFailed value)? failed,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitial value)? initial,
    TResult Function(_TrainingIsLoading value)? loading,
    TResult Function(_TrainingReadyToStudy value)? ready,
    TResult Function(_TrainingFailed value)? failed,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _TrainingReadyToStudy implements TrainingState {
  const factory _TrainingReadyToStudy({required final List<WordModel> words}) =
      _$TrainingReadyToStudyImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$TrainingReadyToStudyImplCopyWith<_$TrainingReadyToStudyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainingFailedImplCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory _$$TrainingFailedImplCopyWith(_$TrainingFailedImpl value,
          $Res Function(_$TrainingFailedImpl) then) =
      __$$TrainingFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class __$$TrainingFailedImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingFailedImpl>
    implements _$$TrainingFailedImplCopyWith<$Res> {
  __$$TrainingFailedImplCopyWithImpl(
      _$TrainingFailedImpl _value, $Res Function(_$TrainingFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$TrainingFailedImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$TrainingFailedImpl implements _TrainingFailed {
  const _$TrainingFailedImpl({required final List<WordModel> words})
      : _words = words;

  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'TrainingState.failed(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingFailedImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingFailedImplCopyWith<_$TrainingFailedImpl> get copyWith =>
      __$$TrainingFailedImplCopyWithImpl<_$TrainingFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) loading,
    required TResult Function(List<WordModel> words) ready,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return failed(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? loading,
    TResult? Function(List<WordModel> words)? ready,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return failed?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? loading,
    TResult Function(List<WordModel> words)? ready,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitial value) initial,
    required TResult Function(_TrainingIsLoading value) loading,
    required TResult Function(_TrainingReadyToStudy value) ready,
    required TResult Function(_TrainingFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitial value)? initial,
    TResult? Function(_TrainingIsLoading value)? loading,
    TResult? Function(_TrainingReadyToStudy value)? ready,
    TResult? Function(_TrainingFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitial value)? initial,
    TResult Function(_TrainingIsLoading value)? loading,
    TResult Function(_TrainingReadyToStudy value)? ready,
    TResult Function(_TrainingFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _TrainingFailed implements TrainingState {
  const factory _TrainingFailed({required final List<WordModel> words}) =
      _$TrainingFailedImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$TrainingFailedImplCopyWith<_$TrainingFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopic value) setTopic,
    required TResult Function(_SetSubtopic value) setSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopic value)? setTopic,
    TResult? Function(_SetSubtopic value)? setSubtopic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopic value)? setTopic,
    TResult Function(_SetSubtopic value)? setSubtopic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingEventCopyWith<$Res> {
  factory $TrainingEventCopyWith(
          TrainingEvent value, $Res Function(TrainingEvent) then) =
      _$TrainingEventCopyWithImpl<$Res, TrainingEvent>;
}

/// @nodoc
class _$TrainingEventCopyWithImpl<$Res, $Val extends TrainingEvent>
    implements $TrainingEventCopyWith<$Res> {
  _$TrainingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetTopicImplCopyWith<$Res> {
  factory _$$SetTopicImplCopyWith(
          _$SetTopicImpl value, $Res Function(_$SetTopicImpl) then) =
      __$$SetTopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$SetTopicImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$SetTopicImpl>
    implements _$$SetTopicImplCopyWith<$Res> {
  __$$SetTopicImplCopyWithImpl(
      _$SetTopicImpl _value, $Res Function(_$SetTopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$SetTopicImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$SetTopicImpl implements _SetTopic {
  const _$SetTopicImpl(this.topic);

  @override
  final Topic topic;

  @override
  String toString() {
    return 'TrainingEvent.setTopic(topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTopicImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTopicImplCopyWith<_$SetTopicImpl> get copyWith =>
      __$$SetTopicImplCopyWithImpl<_$SetTopicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
  }) {
    return setTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
  }) {
    return setTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    required TResult orElse(),
  }) {
    if (setTopic != null) {
      return setTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopic value) setTopic,
    required TResult Function(_SetSubtopic value) setSubtopic,
  }) {
    return setTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopic value)? setTopic,
    TResult? Function(_SetSubtopic value)? setSubtopic,
  }) {
    return setTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopic value)? setTopic,
    TResult Function(_SetSubtopic value)? setSubtopic,
    required TResult orElse(),
  }) {
    if (setTopic != null) {
      return setTopic(this);
    }
    return orElse();
  }
}

abstract class _SetTopic implements TrainingEvent {
  const factory _SetTopic(final Topic topic) = _$SetTopicImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$SetTopicImplCopyWith<_$SetTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSubtopicImplCopyWith<$Res> {
  factory _$$SetSubtopicImplCopyWith(
          _$SetSubtopicImpl value, $Res Function(_$SetSubtopicImpl) then) =
      __$$SetSubtopicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$SetSubtopicImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$SetSubtopicImpl>
    implements _$$SetSubtopicImplCopyWith<$Res> {
  __$$SetSubtopicImplCopyWithImpl(
      _$SetSubtopicImpl _value, $Res Function(_$SetSubtopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$SetSubtopicImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$SetSubtopicImpl implements _SetSubtopic {
  const _$SetSubtopicImpl(this.subtopic);

  @override
  final Subtopic subtopic;

  @override
  String toString() {
    return 'TrainingEvent.setSubtopic(subtopic: $subtopic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSubtopicImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSubtopicImplCopyWith<_$SetSubtopicImpl> get copyWith =>
      __$$SetSubtopicImplCopyWithImpl<_$SetSubtopicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
  }) {
    return setSubtopic(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
  }) {
    return setSubtopic?.call(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    required TResult orElse(),
  }) {
    if (setSubtopic != null) {
      return setSubtopic(subtopic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopic value) setTopic,
    required TResult Function(_SetSubtopic value) setSubtopic,
  }) {
    return setSubtopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopic value)? setTopic,
    TResult? Function(_SetSubtopic value)? setSubtopic,
  }) {
    return setSubtopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopic value)? setTopic,
    TResult Function(_SetSubtopic value)? setSubtopic,
    required TResult orElse(),
  }) {
    if (setSubtopic != null) {
      return setSubtopic(this);
    }
    return orElse();
  }
}

abstract class _SetSubtopic implements TrainingEvent {
  const factory _SetSubtopic(final Subtopic subtopic) = _$SetSubtopicImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$SetSubtopicImplCopyWith<_$SetSubtopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
