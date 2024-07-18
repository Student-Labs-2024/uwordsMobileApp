// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordModelDto _$WordModelDtoFromJson(Map<String, dynamic> json) {
  return _WordModelDto.fromJson(json);
}

/// @nodoc
mixin _$WordModelDto {
  @JsonKey(name: "id", defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category", defaultValue: null)
  dynamic get category => throw _privateConstructorUsedError;
  @JsonKey(name: "enValue", defaultValue: "Error")
  String get enValue => throw _privateConstructorUsedError;
  @JsonKey(name: "ruValue", defaultValue: "Ошибка")
  String get ruValue => throw _privateConstructorUsedError;
  @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
  String get audioLink => throw _privateConstructorUsedError;
  @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
  String get pictureLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordModelDtoCopyWith<WordModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordModelDtoCopyWith<$Res> {
  factory $WordModelDtoCopyWith(
          WordModelDto value, $Res Function(WordModelDto) then) =
      _$WordModelDtoCopyWithImpl<$Res, WordModelDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: 0) int id,
      @JsonKey(name: "category", defaultValue: null) dynamic category,
      @JsonKey(name: "enValue", defaultValue: "Error") String enValue,
      @JsonKey(name: "ruValue", defaultValue: "Ошибка") String ruValue,
      @JsonKey(name: "audioLink", defaultValue: voiceOverLink) String audioLink,
      @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
      String pictureLink});
}

/// @nodoc
class _$WordModelDtoCopyWithImpl<$Res, $Val extends WordModelDto>
    implements $WordModelDtoCopyWith<$Res> {
  _$WordModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? enValue = null,
    Object? ruValue = null,
    Object? audioLink = null,
    Object? pictureLink = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      enValue: null == enValue
          ? _value.enValue
          : enValue // ignore: cast_nullable_to_non_nullable
              as String,
      ruValue: null == ruValue
          ? _value.ruValue
          : ruValue // ignore: cast_nullable_to_non_nullable
              as String,
      audioLink: null == audioLink
          ? _value.audioLink
          : audioLink // ignore: cast_nullable_to_non_nullable
              as String,
      pictureLink: null == pictureLink
          ? _value.pictureLink
          : pictureLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordModelDtoImplCopyWith<$Res>
    implements $WordModelDtoCopyWith<$Res> {
  factory _$$WordModelDtoImplCopyWith(
          _$WordModelDtoImpl value, $Res Function(_$WordModelDtoImpl) then) =
      __$$WordModelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id", defaultValue: 0) int id,
      @JsonKey(name: "category", defaultValue: null) dynamic category,
      @JsonKey(name: "enValue", defaultValue: "Error") String enValue,
      @JsonKey(name: "ruValue", defaultValue: "Ошибка") String ruValue,
      @JsonKey(name: "audioLink", defaultValue: voiceOverLink) String audioLink,
      @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
      String pictureLink});
}

/// @nodoc
class __$$WordModelDtoImplCopyWithImpl<$Res>
    extends _$WordModelDtoCopyWithImpl<$Res, _$WordModelDtoImpl>
    implements _$$WordModelDtoImplCopyWith<$Res> {
  __$$WordModelDtoImplCopyWithImpl(
      _$WordModelDtoImpl _value, $Res Function(_$WordModelDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = freezed,
    Object? enValue = null,
    Object? ruValue = null,
    Object? audioLink = null,
    Object? pictureLink = null,
  }) {
    return _then(_$WordModelDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      enValue: null == enValue
          ? _value.enValue
          : enValue // ignore: cast_nullable_to_non_nullable
              as String,
      ruValue: null == ruValue
          ? _value.ruValue
          : ruValue // ignore: cast_nullable_to_non_nullable
              as String,
      audioLink: null == audioLink
          ? _value.audioLink
          : audioLink // ignore: cast_nullable_to_non_nullable
              as String,
      pictureLink: null == pictureLink
          ? _value.pictureLink
          : pictureLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordModelDtoImpl implements _WordModelDto {
  const _$WordModelDtoImpl(
      {@JsonKey(name: "id", defaultValue: 0) required this.id,
      @JsonKey(name: "category", defaultValue: null) required this.category,
      @JsonKey(name: "enValue", defaultValue: "Error") required this.enValue,
      @JsonKey(name: "ruValue", defaultValue: "Ошибка") required this.ruValue,
      @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
      required this.audioLink,
      @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
      required this.pictureLink});

  factory _$WordModelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordModelDtoImplFromJson(json);

  @override
  @JsonKey(name: "id", defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: "category", defaultValue: null)
  final dynamic category;
  @override
  @JsonKey(name: "enValue", defaultValue: "Error")
  final String enValue;
  @override
  @JsonKey(name: "ruValue", defaultValue: "Ошибка")
  final String ruValue;
  @override
  @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
  final String audioLink;
  @override
  @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
  final String pictureLink;

  @override
  String toString() {
    return 'WordModelDto(id: $id, category: $category, enValue: $enValue, ruValue: $ruValue, audioLink: $audioLink, pictureLink: $pictureLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordModelDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            (identical(other.enValue, enValue) || other.enValue == enValue) &&
            (identical(other.ruValue, ruValue) || other.ruValue == ruValue) &&
            (identical(other.audioLink, audioLink) ||
                other.audioLink == audioLink) &&
            (identical(other.pictureLink, pictureLink) ||
                other.pictureLink == pictureLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(category),
      enValue,
      ruValue,
      audioLink,
      pictureLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordModelDtoImplCopyWith<_$WordModelDtoImpl> get copyWith =>
      __$$WordModelDtoImplCopyWithImpl<_$WordModelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordModelDtoImplToJson(
      this,
    );
  }
}

abstract class _WordModelDto implements WordModelDto {
  const factory _WordModelDto(
      {@JsonKey(name: "id", defaultValue: 0) required final int id,
      @JsonKey(name: "category", defaultValue: null)
      required final dynamic category,
      @JsonKey(name: "enValue", defaultValue: "Error")
      required final String enValue,
      @JsonKey(name: "ruValue", defaultValue: "Ошибка")
      required final String ruValue,
      @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
      required final String audioLink,
      @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
      required final String pictureLink}) = _$WordModelDtoImpl;

  factory _WordModelDto.fromJson(Map<String, dynamic> json) =
      _$WordModelDtoImpl.fromJson;

  @override
  @JsonKey(name: "id", defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: "category", defaultValue: null)
  dynamic get category;
  @override
  @JsonKey(name: "enValue", defaultValue: "Error")
  String get enValue;
  @override
  @JsonKey(name: "ruValue", defaultValue: "Ошибка")
  String get ruValue;
  @override
  @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
  String get audioLink;
  @override
  @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
  String get pictureLink;
  @override
  @JsonKey(ignore: true)
  _$$WordModelDtoImplCopyWith<_$WordModelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
