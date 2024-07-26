// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtopic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubtopicDto _$SubtopicDtoFromJson(Map<String, dynamic> json) {
  return _SubtopicDto.fromJson(json);
}

/// @nodoc
mixin _$SubtopicDto {
  @JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
  String get subtopicTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "words")
  List<WordInfoDto> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubtopicDtoCopyWith<SubtopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtopicDtoCopyWith<$Res> {
  factory $SubtopicDtoCopyWith(
          SubtopicDto value, $Res Function(SubtopicDto) then) =
      _$SubtopicDtoCopyWithImpl<$Res, SubtopicDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
      String subtopicTitle,
      @JsonKey(name: "words") List<WordInfoDto> words});
}

/// @nodoc
class _$SubtopicDtoCopyWithImpl<$Res, $Val extends SubtopicDto>
    implements $SubtopicDtoCopyWith<$Res> {
  _$SubtopicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopicTitle = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      subtopicTitle: null == subtopicTitle
          ? _value.subtopicTitle
          : subtopicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordInfoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtopicDtoImplCopyWith<$Res>
    implements $SubtopicDtoCopyWith<$Res> {
  factory _$$SubtopicDtoImplCopyWith(
          _$SubtopicDtoImpl value, $Res Function(_$SubtopicDtoImpl) then) =
      __$$SubtopicDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
      String subtopicTitle,
      @JsonKey(name: "words") List<WordInfoDto> words});
}

/// @nodoc
class __$$SubtopicDtoImplCopyWithImpl<$Res>
    extends _$SubtopicDtoCopyWithImpl<$Res, _$SubtopicDtoImpl>
    implements _$$SubtopicDtoImplCopyWith<$Res> {
  __$$SubtopicDtoImplCopyWithImpl(
      _$SubtopicDtoImpl _value, $Res Function(_$SubtopicDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtopicTitle = null,
    Object? words = null,
  }) {
    return _then(_$SubtopicDtoImpl(
      subtopicTitle: null == subtopicTitle
          ? _value.subtopicTitle
          : subtopicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordInfoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtopicDtoImpl implements _SubtopicDto {
  const _$SubtopicDtoImpl(
      {@JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
      required this.subtopicTitle,
      @JsonKey(name: "words") required final List<WordInfoDto> words})
      : _words = words;

  factory _$SubtopicDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtopicDtoImplFromJson(json);

  @override
  @JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
  final String subtopicTitle;
  final List<WordInfoDto> _words;
  @override
  @JsonKey(name: "words")
  List<WordInfoDto> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString() {
    return 'SubtopicDto(subtopicTitle: $subtopicTitle, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtopicDtoImpl &&
            (identical(other.subtopicTitle, subtopicTitle) ||
                other.subtopicTitle == subtopicTitle) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subtopicTitle, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtopicDtoImplCopyWith<_$SubtopicDtoImpl> get copyWith =>
      __$$SubtopicDtoImplCopyWithImpl<_$SubtopicDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtopicDtoImplToJson(
      this,
    );
  }
}

abstract class _SubtopicDto implements SubtopicDto {
  const factory _SubtopicDto(
          {@JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
          required final String subtopicTitle,
          @JsonKey(name: "words") required final List<WordInfoDto> words}) =
      _$SubtopicDtoImpl;

  factory _SubtopicDto.fromJson(Map<String, dynamic> json) =
      _$SubtopicDtoImpl.fromJson;

  @override
  @JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
  String get subtopicTitle;
  @override
  @JsonKey(name: "words")
  List<WordInfoDto> get words;
  @override
  @JsonKey(ignore: true)
  _$$SubtopicDtoImplCopyWith<_$SubtopicDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
