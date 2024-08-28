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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStateCopyWith<$Res> {
  factory $TrainingStateCopyWith(
          TrainingState value, $Res Function(TrainingState) then) =
      _$TrainingStateCopyWithImpl<$Res, TrainingState>;
}

/// @nodoc
class _$TrainingStateCopyWithImpl<$Res, $Val extends TrainingState>
    implements $TrainingStateCopyWith<$Res> {
  _$TrainingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TrainingInitialStateImplCopyWith<$Res> {
  factory _$$TrainingInitialStateImplCopyWith(_$TrainingInitialStateImpl value,
          $Res Function(_$TrainingInitialStateImpl) then) =
      __$$TrainingInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainingInitialStateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingInitialStateImpl>
    implements _$$TrainingInitialStateImplCopyWith<$Res> {
  __$$TrainingInitialStateImplCopyWithImpl(_$TrainingInitialStateImpl _value,
      $Res Function(_$TrainingInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrainingInitialStateImpl implements _TrainingInitialState {
  const _$TrainingInitialStateImpl();

  @override
  String toString() {
    return 'TrainingState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
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
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TrainingInitialState implements TrainingState {
  const factory _TrainingInitialState() = _$TrainingInitialStateImpl;
}

/// @nodoc
abstract class _$$TrainingIsLoadingStateImplCopyWith<$Res> {
  factory _$$TrainingIsLoadingStateImplCopyWith(
          _$TrainingIsLoadingStateImpl value,
          $Res Function(_$TrainingIsLoadingStateImpl) then) =
      __$$TrainingIsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainingIsLoadingStateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingIsLoadingStateImpl>
    implements _$$TrainingIsLoadingStateImplCopyWith<$Res> {
  __$$TrainingIsLoadingStateImplCopyWithImpl(
      _$TrainingIsLoadingStateImpl _value,
      $Res Function(_$TrainingIsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrainingIsLoadingStateImpl implements _TrainingIsLoadingState {
  const _$TrainingIsLoadingStateImpl();

  @override
  String toString() {
    return 'TrainingState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TrainingIsLoadingState implements TrainingState {
  const factory _TrainingIsLoadingState() = _$TrainingIsLoadingStateImpl;
}

/// @nodoc
abstract class _$$TrainingFailedStateImplCopyWith<$Res> {
  factory _$$TrainingFailedStateImplCopyWith(_$TrainingFailedStateImpl value,
          $Res Function(_$TrainingFailedStateImpl) then) =
      __$$TrainingFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TrainingFailedStateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$TrainingFailedStateImpl>
    implements _$$TrainingFailedStateImplCopyWith<$Res> {
  __$$TrainingFailedStateImplCopyWithImpl(_$TrainingFailedStateImpl _value,
      $Res Function(_$TrainingFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TrainingFailedStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrainingFailedStateImpl implements _TrainingFailedState {
  const _$TrainingFailedStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TrainingState.failed(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingFailedStateImplCopyWith<_$TrainingFailedStateImpl> get copyWith =>
      __$$TrainingFailedStateImplCopyWithImpl<_$TrainingFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
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
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _TrainingFailedState implements TrainingState {
  const factory _TrainingFailedState({required final String message}) =
      _$TrainingFailedStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TrainingFailedStateImplCopyWith<_$TrainingFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Screen1StateImplCopyWith<$Res> {
  factory _$$Screen1StateImplCopyWith(
          _$Screen1StateImpl value, $Res Function(_$Screen1StateImpl) then) =
      __$$Screen1StateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueKey<dynamic> valueKey, WordModel word, int progress});
}

/// @nodoc
class __$$Screen1StateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$Screen1StateImpl>
    implements _$$Screen1StateImplCopyWith<$Res> {
  __$$Screen1StateImplCopyWithImpl(
      _$Screen1StateImpl _value, $Res Function(_$Screen1StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueKey = null,
    Object? word = null,
    Object? progress = null,
  }) {
    return _then(_$Screen1StateImpl(
      valueKey: null == valueKey
          ? _value.valueKey
          : valueKey // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModel,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Screen1StateImpl implements _Screen1State {
  const _$Screen1StateImpl(
      {required this.valueKey, required this.word, required this.progress});

  @override
  final ValueKey<dynamic> valueKey;
  @override
  final WordModel word;
  @override
  final int progress;

  @override
  String toString() {
    return 'TrainingState.screen1(valueKey: $valueKey, word: $word, progress: $progress)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Screen1StateImplCopyWith<_$Screen1StateImpl> get copyWith =>
      __$$Screen1StateImplCopyWithImpl<_$Screen1StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return screen1(valueKey, word, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return screen1?.call(valueKey, word, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (screen1 != null) {
      return screen1(valueKey, word, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return screen1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return screen1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (screen1 != null) {
      return screen1(this);
    }
    return orElse();
  }
}

abstract class _Screen1State implements TrainingState {
  const factory _Screen1State(
      {required final ValueKey<dynamic> valueKey,
      required final WordModel word,
      required final int progress}) = _$Screen1StateImpl;

  ValueKey<dynamic> get valueKey;
  WordModel get word;
  int get progress;
  @JsonKey(ignore: true)
  _$$Screen1StateImplCopyWith<_$Screen1StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Screen2StateImplCopyWith<$Res> {
  factory _$$Screen2StateImplCopyWith(
          _$Screen2StateImpl value, $Res Function(_$Screen2StateImpl) then) =
      __$$Screen2StateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ValueKey<dynamic> valueKey,
      WordModel word,
      List<Pair<String, int>> letters,
      int progress});
}

/// @nodoc
class __$$Screen2StateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$Screen2StateImpl>
    implements _$$Screen2StateImplCopyWith<$Res> {
  __$$Screen2StateImplCopyWithImpl(
      _$Screen2StateImpl _value, $Res Function(_$Screen2StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueKey = null,
    Object? word = null,
    Object? letters = null,
    Object? progress = null,
  }) {
    return _then(_$Screen2StateImpl(
      valueKey: null == valueKey
          ? _value.valueKey
          : valueKey // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModel,
      letters: null == letters
          ? _value._letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<Pair<String, int>>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Screen2StateImpl implements _Screen2State {
  const _$Screen2StateImpl(
      {required this.valueKey,
      required this.word,
      required final List<Pair<String, int>> letters,
      required this.progress})
      : _letters = letters;

  @override
  final ValueKey<dynamic> valueKey;
  @override
  final WordModel word;
  final List<Pair<String, int>> _letters;
  @override
  List<Pair<String, int>> get letters {
    if (_letters is EqualUnmodifiableListView) return _letters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_letters);
  }

  @override
  final int progress;

  @override
  String toString() {
    return 'TrainingState.screen2(valueKey: $valueKey, word: $word, letters: $letters, progress: $progress)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Screen2StateImplCopyWith<_$Screen2StateImpl> get copyWith =>
      __$$Screen2StateImplCopyWithImpl<_$Screen2StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return screen2(valueKey, word, letters, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return screen2?.call(valueKey, word, letters, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (screen2 != null) {
      return screen2(valueKey, word, letters, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return screen2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return screen2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (screen2 != null) {
      return screen2(this);
    }
    return orElse();
  }
}

abstract class _Screen2State implements TrainingState {
  const factory _Screen2State(
      {required final ValueKey<dynamic> valueKey,
      required final WordModel word,
      required final List<Pair<String, int>> letters,
      required final int progress}) = _$Screen2StateImpl;

  ValueKey<dynamic> get valueKey;
  WordModel get word;
  List<Pair<String, int>> get letters;
  int get progress;
  @JsonKey(ignore: true)
  _$$Screen2StateImplCopyWith<_$Screen2StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Screen3StateImplCopyWith<$Res> {
  factory _$$Screen3StateImplCopyWith(
          _$Screen3StateImpl value, $Res Function(_$Screen3StateImpl) then) =
      __$$Screen3StateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueKey<dynamic> valueKey, WordModel word, int progress});
}

/// @nodoc
class __$$Screen3StateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$Screen3StateImpl>
    implements _$$Screen3StateImplCopyWith<$Res> {
  __$$Screen3StateImplCopyWithImpl(
      _$Screen3StateImpl _value, $Res Function(_$Screen3StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueKey = null,
    Object? word = null,
    Object? progress = null,
  }) {
    return _then(_$Screen3StateImpl(
      valueKey: null == valueKey
          ? _value.valueKey
          : valueKey // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModel,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Screen3StateImpl implements _Screen3State {
  const _$Screen3StateImpl(
      {required this.valueKey, required this.word, required this.progress});

  @override
  final ValueKey<dynamic> valueKey;
  @override
  final WordModel word;
  @override
  final int progress;

  @override
  String toString() {
    return 'TrainingState.screen3(valueKey: $valueKey, word: $word, progress: $progress)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Screen3StateImplCopyWith<_$Screen3StateImpl> get copyWith =>
      __$$Screen3StateImplCopyWithImpl<_$Screen3StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return screen3(valueKey, word, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return screen3?.call(valueKey, word, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (screen3 != null) {
      return screen3(valueKey, word, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return screen3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return screen3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (screen3 != null) {
      return screen3(this);
    }
    return orElse();
  }
}

abstract class _Screen3State implements TrainingState {
  const factory _Screen3State(
      {required final ValueKey<dynamic> valueKey,
      required final WordModel word,
      required final int progress}) = _$Screen3StateImpl;

  ValueKey<dynamic> get valueKey;
  WordModel get word;
  int get progress;
  @JsonKey(ignore: true)
  _$$Screen3StateImplCopyWith<_$Screen3StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Screen4StateImplCopyWith<$Res> {
  factory _$$Screen4StateImplCopyWith(
          _$Screen4StateImpl value, $Res Function(_$Screen4StateImpl) then) =
      __$$Screen4StateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ValueKey<dynamic> valueKey,
      bool cantHear,
      WordModel word,
      List<String> selectableImages,
      int progress});
}

/// @nodoc
class __$$Screen4StateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$Screen4StateImpl>
    implements _$$Screen4StateImplCopyWith<$Res> {
  __$$Screen4StateImplCopyWithImpl(
      _$Screen4StateImpl _value, $Res Function(_$Screen4StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueKey = null,
    Object? cantHear = null,
    Object? word = null,
    Object? selectableImages = null,
    Object? progress = null,
  }) {
    return _then(_$Screen4StateImpl(
      valueKey: null == valueKey
          ? _value.valueKey
          : valueKey // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
      cantHear: null == cantHear
          ? _value.cantHear
          : cantHear // ignore: cast_nullable_to_non_nullable
              as bool,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModel,
      selectableImages: null == selectableImages
          ? _value._selectableImages
          : selectableImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Screen4StateImpl implements _Screen4State {
  const _$Screen4StateImpl(
      {required this.valueKey,
      required this.cantHear,
      required this.word,
      required final List<String> selectableImages,
      required this.progress})
      : _selectableImages = selectableImages;

  @override
  final ValueKey<dynamic> valueKey;
  @override
  final bool cantHear;
  @override
  final WordModel word;
  final List<String> _selectableImages;
  @override
  List<String> get selectableImages {
    if (_selectableImages is EqualUnmodifiableListView)
      return _selectableImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectableImages);
  }

  @override
  final int progress;

  @override
  String toString() {
    return 'TrainingState.screen4(valueKey: $valueKey, cantHear: $cantHear, word: $word, selectableImages: $selectableImages, progress: $progress)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Screen4StateImplCopyWith<_$Screen4StateImpl> get copyWith =>
      __$$Screen4StateImplCopyWithImpl<_$Screen4StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return screen4(valueKey, cantHear, word, selectableImages, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return screen4?.call(valueKey, cantHear, word, selectableImages, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (screen4 != null) {
      return screen4(valueKey, cantHear, word, selectableImages, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return screen4(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return screen4?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (screen4 != null) {
      return screen4(this);
    }
    return orElse();
  }
}

abstract class _Screen4State implements TrainingState {
  const factory _Screen4State(
      {required final ValueKey<dynamic> valueKey,
      required final bool cantHear,
      required final WordModel word,
      required final List<String> selectableImages,
      required final int progress}) = _$Screen4StateImpl;

  ValueKey<dynamic> get valueKey;
  bool get cantHear;
  WordModel get word;
  List<String> get selectableImages;
  int get progress;
  @JsonKey(ignore: true)
  _$$Screen4StateImplCopyWith<_$Screen4StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinalScreenStateImplCopyWith<$Res> {
  factory _$$FinalScreenStateImplCopyWith(_$FinalScreenStateImpl value,
          $Res Function(_$FinalScreenStateImpl) then) =
      __$$FinalScreenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ValueKey<dynamic> valueKey,
      List<WordModel> words,
      List<int> newProgress,
      int progress});
}

/// @nodoc
class __$$FinalScreenStateImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$FinalScreenStateImpl>
    implements _$$FinalScreenStateImplCopyWith<$Res> {
  __$$FinalScreenStateImplCopyWithImpl(_$FinalScreenStateImpl _value,
      $Res Function(_$FinalScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueKey = null,
    Object? words = null,
    Object? newProgress = null,
    Object? progress = null,
  }) {
    return _then(_$FinalScreenStateImpl(
      valueKey: null == valueKey
          ? _value.valueKey
          : valueKey // ignore: cast_nullable_to_non_nullable
              as ValueKey<dynamic>,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      newProgress: null == newProgress
          ? _value._newProgress
          : newProgress // ignore: cast_nullable_to_non_nullable
              as List<int>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FinalScreenStateImpl implements _FinalScreenState {
  const _$FinalScreenStateImpl(
      {required this.valueKey,
      required final List<WordModel> words,
      required final List<int> newProgress,
      required this.progress})
      : _words = words,
        _newProgress = newProgress;

  @override
  final ValueKey<dynamic> valueKey;
  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  final List<int> _newProgress;
  @override
  List<int> get newProgress {
    if (_newProgress is EqualUnmodifiableListView) return _newProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newProgress);
  }

  @override
  final int progress;

  @override
  String toString() {
    return 'TrainingState.finalScreen(valueKey: $valueKey, words: $words, newProgress: $newProgress, progress: $progress)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalScreenStateImplCopyWith<_$FinalScreenStateImpl> get copyWith =>
      __$$FinalScreenStateImplCopyWithImpl<_$FinalScreenStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen1,
    required TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)
        screen2,
    required TResult Function(
            ValueKey<dynamic> valueKey, WordModel word, int progress)
        screen3,
    required TResult Function(ValueKey<dynamic> valueKey, bool cantHear,
            WordModel word, List<String> selectableImages, int progress)
        screen4,
    required TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)
        finalScreen,
  }) {
    return finalScreen(valueKey, words, newProgress, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult? Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult? Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult? Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
  }) {
    return finalScreen?.call(valueKey, words, newProgress, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen1,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word,
            List<Pair<String, int>> letters, int progress)?
        screen2,
    TResult Function(ValueKey<dynamic> valueKey, WordModel word, int progress)?
        screen3,
    TResult Function(ValueKey<dynamic> valueKey, bool cantHear, WordModel word,
            List<String> selectableImages, int progress)?
        screen4,
    TResult Function(ValueKey<dynamic> valueKey, List<WordModel> words,
            List<int> newProgress, int progress)?
        finalScreen,
    required TResult orElse(),
  }) {
    if (finalScreen != null) {
      return finalScreen(valueKey, words, newProgress, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrainingInitialState value) initial,
    required TResult Function(_TrainingIsLoadingState value) loading,
    required TResult Function(_TrainingFailedState value) failed,
    required TResult Function(_Screen1State value) screen1,
    required TResult Function(_Screen2State value) screen2,
    required TResult Function(_Screen3State value) screen3,
    required TResult Function(_Screen4State value) screen4,
    required TResult Function(_FinalScreenState value) finalScreen,
  }) {
    return finalScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrainingInitialState value)? initial,
    TResult? Function(_TrainingIsLoadingState value)? loading,
    TResult? Function(_TrainingFailedState value)? failed,
    TResult? Function(_Screen1State value)? screen1,
    TResult? Function(_Screen2State value)? screen2,
    TResult? Function(_Screen3State value)? screen3,
    TResult? Function(_Screen4State value)? screen4,
    TResult? Function(_FinalScreenState value)? finalScreen,
  }) {
    return finalScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrainingInitialState value)? initial,
    TResult Function(_TrainingIsLoadingState value)? loading,
    TResult Function(_TrainingFailedState value)? failed,
    TResult Function(_Screen1State value)? screen1,
    TResult Function(_Screen2State value)? screen2,
    TResult Function(_Screen3State value)? screen3,
    TResult Function(_Screen4State value)? screen4,
    TResult Function(_FinalScreenState value)? finalScreen,
    required TResult orElse(),
  }) {
    if (finalScreen != null) {
      return finalScreen(this);
    }
    return orElse();
  }
}

abstract class _FinalScreenState implements TrainingState {
  const factory _FinalScreenState(
      {required final ValueKey<dynamic> valueKey,
      required final List<WordModel> words,
      required final List<int> newProgress,
      required final int progress}) = _$FinalScreenStateImpl;

  ValueKey<dynamic> get valueKey;
  List<WordModel> get words;
  List<int> get newProgress;
  int get progress;
  @JsonKey(ignore: true)
  _$$FinalScreenStateImplCopyWith<_$FinalScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
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
abstract class _$$SetTopicEventImplCopyWith<$Res> {
  factory _$$SetTopicEventImplCopyWith(
          _$SetTopicEventImpl value, $Res Function(_$SetTopicEventImpl) then) =
      __$$SetTopicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Topic topic});
}

/// @nodoc
class __$$SetTopicEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$SetTopicEventImpl>
    implements _$$SetTopicEventImplCopyWith<$Res> {
  __$$SetTopicEventImplCopyWithImpl(
      _$SetTopicEventImpl _value, $Res Function(_$SetTopicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = null,
  }) {
    return _then(_$SetTopicEventImpl(
      null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
    ));
  }
}

/// @nodoc

class _$SetTopicEventImpl implements _SetTopicEvent {
  const _$SetTopicEventImpl(this.topic);

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
            other is _$SetTopicEventImpl &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTopicEventImplCopyWith<_$SetTopicEventImpl> get copyWith =>
      __$$SetTopicEventImplCopyWithImpl<_$SetTopicEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return setTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return setTopic?.call(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
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
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return setTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return setTopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (setTopic != null) {
      return setTopic(this);
    }
    return orElse();
  }
}

abstract class _SetTopicEvent implements TrainingEvent {
  const factory _SetTopicEvent(final Topic topic) = _$SetTopicEventImpl;

  Topic get topic;
  @JsonKey(ignore: true)
  _$$SetTopicEventImplCopyWith<_$SetTopicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSubtopicEventImplCopyWith<$Res> {
  factory _$$SetSubtopicEventImplCopyWith(_$SetSubtopicEventImpl value,
          $Res Function(_$SetSubtopicEventImpl) then) =
      __$$SetSubtopicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$SetSubtopicEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$SetSubtopicEventImpl>
    implements _$$SetSubtopicEventImplCopyWith<$Res> {
  __$$SetSubtopicEventImplCopyWithImpl(_$SetSubtopicEventImpl _value,
      $Res Function(_$SetSubtopicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$SetSubtopicEventImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$SetSubtopicEventImpl implements _SetSubtopicEvent {
  const _$SetSubtopicEventImpl(this.subtopic);

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
            other is _$SetSubtopicEventImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSubtopicEventImplCopyWith<_$SetSubtopicEventImpl> get copyWith =>
      __$$SetSubtopicEventImplCopyWithImpl<_$SetSubtopicEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return setSubtopic(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return setSubtopic?.call(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
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
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return setSubtopic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return setSubtopic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (setSubtopic != null) {
      return setSubtopic(this);
    }
    return orElse();
  }
}

abstract class _SetSubtopicEvent implements TrainingEvent {
  const factory _SetSubtopicEvent(final Subtopic subtopic) =
      _$SetSubtopicEventImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$SetSubtopicEventImplCopyWith<_$SetSubtopicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextStepEventImplCopyWith<$Res> {
  factory _$$NextStepEventImplCopyWith(
          _$NextStepEventImpl value, $Res Function(_$NextStepEventImpl) then) =
      __$$NextStepEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextStepEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$NextStepEventImpl>
    implements _$$NextStepEventImplCopyWith<$Res> {
  __$$NextStepEventImplCopyWithImpl(
      _$NextStepEventImpl _value, $Res Function(_$NextStepEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextStepEventImpl implements _NextStepEvent {
  const _$NextStepEventImpl();

  @override
  String toString() {
    return 'TrainingEvent.nextStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextStepEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return nextStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return nextStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return nextStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return nextStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (nextStep != null) {
      return nextStep(this);
    }
    return orElse();
  }
}

abstract class _NextStepEvent implements TrainingEvent {
  const factory _NextStepEvent() = _$NextStepEventImpl;
}

/// @nodoc
abstract class _$$GoSuccessfulScreenEventImplCopyWith<$Res> {
  factory _$$GoSuccessfulScreenEventImplCopyWith(
          _$GoSuccessfulScreenEventImpl value,
          $Res Function(_$GoSuccessfulScreenEventImpl) then) =
      __$$GoSuccessfulScreenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoSuccessfulScreenEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$GoSuccessfulScreenEventImpl>
    implements _$$GoSuccessfulScreenEventImplCopyWith<$Res> {
  __$$GoSuccessfulScreenEventImplCopyWithImpl(
      _$GoSuccessfulScreenEventImpl _value,
      $Res Function(_$GoSuccessfulScreenEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoSuccessfulScreenEventImpl implements _GoSuccessfulScreenEvent {
  const _$GoSuccessfulScreenEventImpl();

  @override
  String toString() {
    return 'TrainingEvent.goSuccessfulScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoSuccessfulScreenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return goSuccessfulScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return goSuccessfulScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (goSuccessfulScreen != null) {
      return goSuccessfulScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return goSuccessfulScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return goSuccessfulScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (goSuccessfulScreen != null) {
      return goSuccessfulScreen(this);
    }
    return orElse();
  }
}

abstract class _GoSuccessfulScreenEvent implements TrainingEvent {
  const factory _GoSuccessfulScreenEvent() = _$GoSuccessfulScreenEventImpl;
}

/// @nodoc
abstract class _$$CantHearEventImplCopyWith<$Res> {
  factory _$$CantHearEventImplCopyWith(
          _$CantHearEventImpl value, $Res Function(_$CantHearEventImpl) then) =
      __$$CantHearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantHearEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$CantHearEventImpl>
    implements _$$CantHearEventImplCopyWith<$Res> {
  __$$CantHearEventImplCopyWithImpl(
      _$CantHearEventImpl _value, $Res Function(_$CantHearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantHearEventImpl implements _CantHearEvent {
  const _$CantHearEventImpl();

  @override
  String toString() {
    return 'TrainingEvent.cantHear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CantHearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return cantHear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return cantHear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (cantHear != null) {
      return cantHear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return cantHear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return cantHear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (cantHear != null) {
      return cantHear(this);
    }
    return orElse();
  }
}

abstract class _CantHearEvent implements TrainingEvent {
  const factory _CantHearEvent() = _$CantHearEventImpl;
}

/// @nodoc
abstract class _$$CantSpeakEventImplCopyWith<$Res> {
  factory _$$CantSpeakEventImplCopyWith(_$CantSpeakEventImpl value,
          $Res Function(_$CantSpeakEventImpl) then) =
      __$$CantSpeakEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantSpeakEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$CantSpeakEventImpl>
    implements _$$CantSpeakEventImplCopyWith<$Res> {
  __$$CantSpeakEventImplCopyWithImpl(
      _$CantSpeakEventImpl _value, $Res Function(_$CantSpeakEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantSpeakEventImpl implements _CantSpeakEvent {
  const _$CantSpeakEventImpl();

  @override
  String toString() {
    return 'TrainingEvent.cantSpeak()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CantSpeakEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return cantSpeak();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return cantSpeak?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (cantSpeak != null) {
      return cantSpeak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return cantSpeak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return cantSpeak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (cantSpeak != null) {
      return cantSpeak(this);
    }
    return orElse();
  }
}

abstract class _CantSpeakEvent implements TrainingEvent {
  const factory _CantSpeakEvent() = _$CantSpeakEventImpl;
}

/// @nodoc
abstract class _$$ZeroHealthEventImplCopyWith<$Res> {
  factory _$$ZeroHealthEventImplCopyWith(_$ZeroHealthEventImpl value,
          $Res Function(_$ZeroHealthEventImpl) then) =
      __$$ZeroHealthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ZeroHealthEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$ZeroHealthEventImpl>
    implements _$$ZeroHealthEventImplCopyWith<$Res> {
  __$$ZeroHealthEventImplCopyWithImpl(
      _$ZeroHealthEventImpl _value, $Res Function(_$ZeroHealthEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ZeroHealthEventImpl implements _ZeroHealthEvent {
  const _$ZeroHealthEventImpl();

  @override
  String toString() {
    return 'TrainingEvent.zeroHealth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ZeroHealthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return zeroHealth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return zeroHealth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (zeroHealth != null) {
      return zeroHealth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return zeroHealth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return zeroHealth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (zeroHealth != null) {
      return zeroHealth(this);
    }
    return orElse();
  }
}

abstract class _ZeroHealthEvent implements TrainingEvent {
  const factory _ZeroHealthEvent() = _$ZeroHealthEventImpl;
}

/// @nodoc
abstract class _$$StartStudyEventImplCopyWith<$Res> {
  factory _$$StartStudyEventImplCopyWith(_$StartStudyEventImpl value,
          $Res Function(_$StartStudyEventImpl) then) =
      __$$StartStudyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subtopic subtopic});
}

/// @nodoc
class __$$StartStudyEventImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$StartStudyEventImpl>
    implements _$$StartStudyEventImplCopyWith<$Res> {
  __$$StartStudyEventImplCopyWithImpl(
      _$StartStudyEventImpl _value, $Res Function(_$StartStudyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopic = null,
  }) {
    return _then(_$StartStudyEventImpl(
      null == subtopic
          ? _value.subtopic
          : subtopic // ignore: cast_nullable_to_non_nullable
              as Subtopic,
    ));
  }
}

/// @nodoc

class _$StartStudyEventImpl implements _StartStudyEvent {
  const _$StartStudyEventImpl(this.subtopic);

  @override
  final Subtopic subtopic;

  @override
  String toString() {
    return 'TrainingEvent.startStudy(subtopic: $subtopic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartStudyEventImpl &&
            (identical(other.subtopic, subtopic) ||
                other.subtopic == subtopic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartStudyEventImplCopyWith<_$StartStudyEventImpl> get copyWith =>
      __$$StartStudyEventImplCopyWithImpl<_$StartStudyEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Topic topic) setTopic,
    required TResult Function(Subtopic subtopic) setSubtopic,
    required TResult Function() nextStep,
    required TResult Function() goSuccessfulScreen,
    required TResult Function() cantHear,
    required TResult Function() cantSpeak,
    required TResult Function() zeroHealth,
    required TResult Function(Subtopic subtopic) startStudy,
  }) {
    return startStudy(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Topic topic)? setTopic,
    TResult? Function(Subtopic subtopic)? setSubtopic,
    TResult? Function()? nextStep,
    TResult? Function()? goSuccessfulScreen,
    TResult? Function()? cantHear,
    TResult? Function()? cantSpeak,
    TResult? Function()? zeroHealth,
    TResult? Function(Subtopic subtopic)? startStudy,
  }) {
    return startStudy?.call(subtopic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Topic topic)? setTopic,
    TResult Function(Subtopic subtopic)? setSubtopic,
    TResult Function()? nextStep,
    TResult Function()? goSuccessfulScreen,
    TResult Function()? cantHear,
    TResult Function()? cantSpeak,
    TResult Function()? zeroHealth,
    TResult Function(Subtopic subtopic)? startStudy,
    required TResult orElse(),
  }) {
    if (startStudy != null) {
      return startStudy(subtopic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTopicEvent value) setTopic,
    required TResult Function(_SetSubtopicEvent value) setSubtopic,
    required TResult Function(_NextStepEvent value) nextStep,
    required TResult Function(_GoSuccessfulScreenEvent value)
        goSuccessfulScreen,
    required TResult Function(_CantHearEvent value) cantHear,
    required TResult Function(_CantSpeakEvent value) cantSpeak,
    required TResult Function(_ZeroHealthEvent value) zeroHealth,
    required TResult Function(_StartStudyEvent value) startStudy,
  }) {
    return startStudy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTopicEvent value)? setTopic,
    TResult? Function(_SetSubtopicEvent value)? setSubtopic,
    TResult? Function(_NextStepEvent value)? nextStep,
    TResult? Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult? Function(_CantHearEvent value)? cantHear,
    TResult? Function(_CantSpeakEvent value)? cantSpeak,
    TResult? Function(_ZeroHealthEvent value)? zeroHealth,
    TResult? Function(_StartStudyEvent value)? startStudy,
  }) {
    return startStudy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTopicEvent value)? setTopic,
    TResult Function(_SetSubtopicEvent value)? setSubtopic,
    TResult Function(_NextStepEvent value)? nextStep,
    TResult Function(_GoSuccessfulScreenEvent value)? goSuccessfulScreen,
    TResult Function(_CantHearEvent value)? cantHear,
    TResult Function(_CantSpeakEvent value)? cantSpeak,
    TResult Function(_ZeroHealthEvent value)? zeroHealth,
    TResult Function(_StartStudyEvent value)? startStudy,
    required TResult orElse(),
  }) {
    if (startStudy != null) {
      return startStudy(this);
    }
    return orElse();
  }
}

abstract class _StartStudyEvent implements TrainingEvent {
  const factory _StartStudyEvent(final Subtopic subtopic) =
      _$StartStudyEventImpl;

  Subtopic get subtopic;
  @JsonKey(ignore: true)
  _$$StartStudyEventImplCopyWith<_$StartStudyEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
