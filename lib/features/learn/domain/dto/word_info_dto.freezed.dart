// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordInfoDto _$WordInfoDtoFromJson(Map<String, dynamic> json) {
  return _WordInfoDto.fromJson(json);
}

/// @nodoc
mixin _$WordInfoDto {
  @JsonKey(name: "id", defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "word")
  WordModelDto get word => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id", defaultValue: 0)
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "latest_study", defaultValue: null)
  DateTime? get latestStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency", defaultValue: 0)
  int get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: "progress", defaultValue: 0)
  int get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordInfoDtoCopyWith<WordInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordInfoDtoCopyWith<$Res> {
  factory $WordInfoDtoCopyWith(
          WordInfoDto value, $Res Function(WordInfoDto) then) =
      _$WordInfoDtoCopyWithImpl<$Res, WordInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: 0) int id,
      @JsonKey(name: "word") WordModelDto word,
      @JsonKey(name: "user_id", defaultValue: 0) int userId,
      @JsonKey(name: "latest_study", defaultValue: null) DateTime? latestStudy,
      @JsonKey(name: "frequency", defaultValue: 0) int frequency,
      @JsonKey(name: "progress", defaultValue: 0) int progress});

  $WordModelDtoCopyWith<$Res> get word;
}

/// @nodoc
class _$WordInfoDtoCopyWithImpl<$Res, $Val extends WordInfoDto>
    implements $WordInfoDtoCopyWith<$Res> {
  _$WordInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? userId = null,
    Object? latestStudy = freezed,
    Object? frequency = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModelDto,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      latestStudy: freezed == latestStudy
          ? _value.latestStudy
          : latestStudy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WordModelDtoCopyWith<$Res> get word {
    return $WordModelDtoCopyWith<$Res>(_value.word, (value) {
      return _then(_value.copyWith(word: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WordInfoDtoImplCopyWith<$Res>
    implements $WordInfoDtoCopyWith<$Res> {
  factory _$$WordInfoDtoImplCopyWith(
          _$WordInfoDtoImpl value, $Res Function(_$WordInfoDtoImpl) then) =
      __$$WordInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: 0) int id,
      @JsonKey(name: "word") WordModelDto word,
      @JsonKey(name: "user_id", defaultValue: 0) int userId,
      @JsonKey(name: "latest_study", defaultValue: null) DateTime? latestStudy,
      @JsonKey(name: "frequency", defaultValue: 0) int frequency,
      @JsonKey(name: "progress", defaultValue: 0) int progress});

  @override
  $WordModelDtoCopyWith<$Res> get word;
}

/// @nodoc
class __$$WordInfoDtoImplCopyWithImpl<$Res>
    extends _$WordInfoDtoCopyWithImpl<$Res, _$WordInfoDtoImpl>
    implements _$$WordInfoDtoImplCopyWith<$Res> {
  __$$WordInfoDtoImplCopyWithImpl(
      _$WordInfoDtoImpl _value, $Res Function(_$WordInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? word = null,
    Object? userId = null,
    Object? latestStudy = freezed,
    Object? frequency = null,
    Object? progress = null,
  }) {
    return _then(_$WordInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as WordModelDto,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      latestStudy: freezed == latestStudy
          ? _value.latestStudy
          : latestStudy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordInfoDtoImpl implements _WordInfoDto {
  const _$WordInfoDtoImpl(
      {@JsonKey(name: "id", defaultValue: 0) required this.id,
      @JsonKey(name: "word") required this.word,
      @JsonKey(name: "user_id", defaultValue: 0) required this.userId,
      @JsonKey(name: "latest_study", defaultValue: null)
      required this.latestStudy,
      @JsonKey(name: "frequency", defaultValue: 0) required this.frequency,
      @JsonKey(name: "progress", defaultValue: 0) required this.progress});

  factory _$WordInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: "id", defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: "word")
  final WordModelDto word;
  @override
  @JsonKey(name: "user_id", defaultValue: 0)
  final int userId;
  @override
  @JsonKey(name: "latest_study", defaultValue: null)
  final DateTime? latestStudy;
  @override
  @JsonKey(name: "frequency", defaultValue: 0)
  final int frequency;
  @override
  @JsonKey(name: "progress", defaultValue: 0)
  final int progress;

  @override
  String toString() {
    return 'WordInfoDto(id: $id, word: $word, userId: $userId, latestStudy: $latestStudy, frequency: $frequency, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.latestStudy, latestStudy) ||
                other.latestStudy == latestStudy) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, word, userId, latestStudy, frequency, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordInfoDtoImplCopyWith<_$WordInfoDtoImpl> get copyWith =>
      __$$WordInfoDtoImplCopyWithImpl<_$WordInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _WordInfoDto implements WordInfoDto {
  const factory _WordInfoDto(
      {@JsonKey(name: "id", defaultValue: 0) required final int id,
      @JsonKey(name: "word") required final WordModelDto word,
      @JsonKey(name: "user_id", defaultValue: 0) required final int userId,
      @JsonKey(name: "latest_study", defaultValue: null)
      required final DateTime? latestStudy,
      @JsonKey(name: "frequency", defaultValue: 0) required final int frequency,
      @JsonKey(name: "progress", defaultValue: 0)
      required final int progress}) = _$WordInfoDtoImpl;

  factory _WordInfoDto.fromJson(Map<String, dynamic> json) =
      _$WordInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: "id", defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: "word")
  WordModelDto get word;
  @override
  @JsonKey(name: "user_id", defaultValue: 0)
  int get userId;
  @override
  @JsonKey(name: "latest_study", defaultValue: null)
  DateTime? get latestStudy;
  @override
  @JsonKey(name: "frequency", defaultValue: 0)
  int get frequency;
  @override
  @JsonKey(name: "progress", defaultValue: 0)
  int get progress;
  @override
  @JsonKey(ignore: true)
  _$$WordInfoDtoImplCopyWith<_$WordInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
