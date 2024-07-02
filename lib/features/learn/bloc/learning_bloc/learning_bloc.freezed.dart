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
  List<WordModel> get words => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) gotWordsForStudy,
    required TResult Function(List<WordModel> words) sendedLearnedWords,
    required TResult Function(List<WordModel> words) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? gotWordsForStudy,
    TResult? Function(List<WordModel> words)? sendedLearnedWords,
    TResult? Function(List<WordModel> words)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? gotWordsForStudy,
    TResult Function(List<WordModel> words)? sendedLearnedWords,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningSendedLearnedWords value)
        sendedLearnedWords,
    required TResult Function(_LearningFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult? Function(_LearningFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
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
  $Res call({List<WordModel> words});
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
abstract class _$$LearningInitialImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningInitialImplCopyWith(_$LearningInitialImpl value,
          $Res Function(_$LearningInitialImpl) then) =
      __$$LearningInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
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
    Object? words = null,
  }) {
    return _then(_$LearningInitialImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$LearningInitialImpl implements _LearningInitial {
  const _$LearningInitialImpl({required final List<WordModel> words})
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
    return 'LearningState.initial(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningInitialImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningInitialImplCopyWith<_$LearningInitialImpl> get copyWith =>
      __$$LearningInitialImplCopyWithImpl<_$LearningInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) gotWordsForStudy,
    required TResult Function(List<WordModel> words) sendedLearnedWords,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return initial(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? gotWordsForStudy,
    TResult? Function(List<WordModel> words)? sendedLearnedWords,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return initial?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? gotWordsForStudy,
    TResult Function(List<WordModel> words)? sendedLearnedWords,
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
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningSendedLearnedWords value)
        sendedLearnedWords,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
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
  const factory _LearningInitial({required final List<WordModel> words}) =
      _$LearningInitialImpl;

  @override
  List<WordModel> get words;
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
  $Res call({List<WordModel> words});
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
    Object? words = null,
  }) {
    return _then(_$LearningGotWordsForStudyImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$LearningGotWordsForStudyImpl implements _LearningGotWordsForStudy {
  const _$LearningGotWordsForStudyImpl({required final List<WordModel> words})
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
    return 'LearningState.gotWordsForStudy(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGotWordsForStudyImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGotWordsForStudyImplCopyWith<_$LearningGotWordsForStudyImpl>
      get copyWith => __$$LearningGotWordsForStudyImplCopyWithImpl<
          _$LearningGotWordsForStudyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) gotWordsForStudy,
    required TResult Function(List<WordModel> words) sendedLearnedWords,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return gotWordsForStudy(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? gotWordsForStudy,
    TResult? Function(List<WordModel> words)? sendedLearnedWords,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return gotWordsForStudy?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? gotWordsForStudy,
    TResult Function(List<WordModel> words)? sendedLearnedWords,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (gotWordsForStudy != null) {
      return gotWordsForStudy(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningSendedLearnedWords value)
        sendedLearnedWords,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return gotWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return gotWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
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
  const factory _LearningGotWordsForStudy(
      {required final List<WordModel> words}) = _$LearningGotWordsForStudyImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$LearningGotWordsForStudyImplCopyWith<_$LearningGotWordsForStudyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningSendedLearnedWordsImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningSendedLearnedWordsImplCopyWith(
          _$LearningSendedLearnedWordsImpl value,
          $Res Function(_$LearningSendedLearnedWordsImpl) then) =
      __$$LearningSendedLearnedWordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words});
}

/// @nodoc
class __$$LearningSendedLearnedWordsImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningSendedLearnedWordsImpl>
    implements _$$LearningSendedLearnedWordsImplCopyWith<$Res> {
  __$$LearningSendedLearnedWordsImplCopyWithImpl(
      _$LearningSendedLearnedWordsImpl _value,
      $Res Function(_$LearningSendedLearnedWordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$LearningSendedLearnedWordsImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$LearningSendedLearnedWordsImpl implements _LearningSendedLearnedWords {
  const _$LearningSendedLearnedWordsImpl({required final List<WordModel> words})
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
    return 'LearningState.sendedLearnedWords(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningSendedLearnedWordsImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningSendedLearnedWordsImplCopyWith<_$LearningSendedLearnedWordsImpl>
      get copyWith => __$$LearningSendedLearnedWordsImplCopyWithImpl<
          _$LearningSendedLearnedWordsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) gotWordsForStudy,
    required TResult Function(List<WordModel> words) sendedLearnedWords,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return sendedLearnedWords(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? gotWordsForStudy,
    TResult? Function(List<WordModel> words)? sendedLearnedWords,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return sendedLearnedWords?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? gotWordsForStudy,
    TResult Function(List<WordModel> words)? sendedLearnedWords,
    TResult Function(List<WordModel> words)? failed,
    required TResult orElse(),
  }) {
    if (sendedLearnedWords != null) {
      return sendedLearnedWords(words);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningSendedLearnedWords value)
        sendedLearnedWords,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return sendedLearnedWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return sendedLearnedWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult Function(_LearningFailed value)? failed,
    required TResult orElse(),
  }) {
    if (sendedLearnedWords != null) {
      return sendedLearnedWords(this);
    }
    return orElse();
  }
}

abstract class _LearningSendedLearnedWords implements LearningState {
  const factory _LearningSendedLearnedWords(
          {required final List<WordModel> words}) =
      _$LearningSendedLearnedWordsImpl;

  @override
  List<WordModel> get words;
  @override
  @JsonKey(ignore: true)
  _$$LearningSendedLearnedWordsImplCopyWith<_$LearningSendedLearnedWordsImpl>
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
  $Res call({List<WordModel> words});
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
    Object? words = null,
  }) {
    return _then(_$LearningFailedImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$LearningFailedImpl implements _LearningFailed {
  const _$LearningFailedImpl({required final List<WordModel> words})
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
    return 'LearningState.failed(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningFailedImpl &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningFailedImplCopyWith<_$LearningFailedImpl> get copyWith =>
      __$$LearningFailedImplCopyWithImpl<_$LearningFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<WordModel> words) initial,
    required TResult Function(List<WordModel> words) gotWordsForStudy,
    required TResult Function(List<WordModel> words) sendedLearnedWords,
    required TResult Function(List<WordModel> words) failed,
  }) {
    return failed(words);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<WordModel> words)? initial,
    TResult? Function(List<WordModel> words)? gotWordsForStudy,
    TResult? Function(List<WordModel> words)? sendedLearnedWords,
    TResult? Function(List<WordModel> words)? failed,
  }) {
    return failed?.call(words);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<WordModel> words)? initial,
    TResult Function(List<WordModel> words)? gotWordsForStudy,
    TResult Function(List<WordModel> words)? sendedLearnedWords,
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
    required TResult Function(_LearningInitial value) initial,
    required TResult Function(_LearningGotWordsForStudy value) gotWordsForStudy,
    required TResult Function(_LearningSendedLearnedWords value)
        sendedLearnedWords,
    required TResult Function(_LearningFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LearningInitial value)? initial,
    TResult? Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult? Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
    TResult? Function(_LearningFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LearningInitial value)? initial,
    TResult Function(_LearningGotWordsForStudy value)? gotWordsForStudy,
    TResult Function(_LearningSendedLearnedWords value)? sendedLearnedWords,
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
  const factory _LearningFailed({required final List<WordModel> words}) =
      _$LearningFailedImpl;

  @override
  List<WordModel> get words;
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
    required TResult Function(List<int> wordsId) sendLearnedWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWordsForStudy,
    TResult? Function(List<int> wordsId)? sendLearnedWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWordsForStudy,
    TResult Function(List<int> wordsId)? sendLearnedWords,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWordsForStudy value) getWordsForStudy,
    required TResult Function(_SendLearnedWords value) sendLearnedWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult? Function(_SendLearnedWords value)? sendLearnedWords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult Function(_SendLearnedWords value)? sendLearnedWords,
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
    required TResult Function(List<int> wordsId) sendLearnedWords,
  }) {
    return getWordsForStudy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWordsForStudy,
    TResult? Function(List<int> wordsId)? sendLearnedWords,
  }) {
    return getWordsForStudy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWordsForStudy,
    TResult Function(List<int> wordsId)? sendLearnedWords,
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
    required TResult Function(_SendLearnedWords value) sendLearnedWords,
  }) {
    return getWordsForStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult? Function(_SendLearnedWords value)? sendLearnedWords,
  }) {
    return getWordsForStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult Function(_SendLearnedWords value)? sendLearnedWords,
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

/// @nodoc
abstract class _$$SendLearnedWordsImplCopyWith<$Res> {
  factory _$$SendLearnedWordsImplCopyWith(_$SendLearnedWordsImpl value,
          $Res Function(_$SendLearnedWordsImpl) then) =
      __$$SendLearnedWordsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> wordsId});
}

/// @nodoc
class __$$SendLearnedWordsImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$SendLearnedWordsImpl>
    implements _$$SendLearnedWordsImplCopyWith<$Res> {
  __$$SendLearnedWordsImplCopyWithImpl(_$SendLearnedWordsImpl _value,
      $Res Function(_$SendLearnedWordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordsId = null,
  }) {
    return _then(_$SendLearnedWordsImpl(
      null == wordsId
          ? _value._wordsId
          : wordsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SendLearnedWordsImpl implements _SendLearnedWords {
  const _$SendLearnedWordsImpl(final List<int> wordsId) : _wordsId = wordsId;

  final List<int> _wordsId;
  @override
  List<int> get wordsId {
    if (_wordsId is EqualUnmodifiableListView) return _wordsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordsId);
  }

  @override
  String toString() {
    return 'LearningEvent.sendLearnedWords(wordsId: $wordsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendLearnedWordsImpl &&
            const DeepCollectionEquality().equals(other._wordsId, _wordsId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wordsId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendLearnedWordsImplCopyWith<_$SendLearnedWordsImpl> get copyWith =>
      __$$SendLearnedWordsImplCopyWithImpl<_$SendLearnedWordsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWordsForStudy,
    required TResult Function(List<int> wordsId) sendLearnedWords,
  }) {
    return sendLearnedWords(wordsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWordsForStudy,
    TResult? Function(List<int> wordsId)? sendLearnedWords,
  }) {
    return sendLearnedWords?.call(wordsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWordsForStudy,
    TResult Function(List<int> wordsId)? sendLearnedWords,
    required TResult orElse(),
  }) {
    if (sendLearnedWords != null) {
      return sendLearnedWords(wordsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWordsForStudy value) getWordsForStudy,
    required TResult Function(_SendLearnedWords value) sendLearnedWords,
  }) {
    return sendLearnedWords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult? Function(_SendLearnedWords value)? sendLearnedWords,
  }) {
    return sendLearnedWords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWordsForStudy value)? getWordsForStudy,
    TResult Function(_SendLearnedWords value)? sendLearnedWords,
    required TResult orElse(),
  }) {
    if (sendLearnedWords != null) {
      return sendLearnedWords(this);
    }
    return orElse();
  }
}

abstract class _SendLearnedWords implements LearningEvent {
  const factory _SendLearnedWords(final List<int> wordsId) =
      _$SendLearnedWordsImpl;

  List<int> get wordsId;
  @JsonKey(ignore: true)
  _$$SendLearnedWordsImplCopyWith<_$SendLearnedWordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
