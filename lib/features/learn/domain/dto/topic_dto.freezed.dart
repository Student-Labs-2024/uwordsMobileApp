// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopicDto _$TopicDtoFromJson(Map<String, dynamic> json) {
  return _TopicDto.fromJson(json);
}

/// @nodoc
mixin _$TopicDto {
  @JsonKey(name: "topic_title", defaultValue: 'null Title')
  String get topicTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "subtopics")
  List<SubtopicDto> get subtopics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDtoCopyWith<TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDtoCopyWith<$Res> {
  factory $TopicDtoCopyWith(TopicDto value, $Res Function(TopicDto) then) =
      _$TopicDtoCopyWithImpl<$Res, TopicDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "topic_title", defaultValue: 'null Title')
      String topicTitle,
      @JsonKey(name: "subtopics") List<SubtopicDto> subtopics});
}

/// @nodoc
class _$TopicDtoCopyWithImpl<$Res, $Val extends TopicDto>
    implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicTitle = null,
    Object? subtopics = null,
  }) {
    return _then(_value.copyWith(
      topicTitle: null == topicTitle
          ? _value.topicTitle
          : topicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      subtopics: null == subtopics
          ? _value.subtopics
          : subtopics // ignore: cast_nullable_to_non_nullable
              as List<SubtopicDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicDtoImplCopyWith<$Res>
    implements $TopicDtoCopyWith<$Res> {
  factory _$$TopicDtoImplCopyWith(
          _$TopicDtoImpl value, $Res Function(_$TopicDtoImpl) then) =
      __$$TopicDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "topic_title", defaultValue: 'null Title')
      String topicTitle,
      @JsonKey(name: "subtopics") List<SubtopicDto> subtopics});
}

/// @nodoc
class __$$TopicDtoImplCopyWithImpl<$Res>
    extends _$TopicDtoCopyWithImpl<$Res, _$TopicDtoImpl>
    implements _$$TopicDtoImplCopyWith<$Res> {
  __$$TopicDtoImplCopyWithImpl(
      _$TopicDtoImpl _value, $Res Function(_$TopicDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicTitle = null,
    Object? subtopics = null,
  }) {
    return _then(_$TopicDtoImpl(
      topicTitle: null == topicTitle
          ? _value.topicTitle
          : topicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      subtopics: null == subtopics
          ? _value._subtopics
          : subtopics // ignore: cast_nullable_to_non_nullable
              as List<SubtopicDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicDtoImpl implements _TopicDto {
  const _$TopicDtoImpl(
      {@JsonKey(name: "topic_title", defaultValue: 'null Title')
      required this.topicTitle,
      @JsonKey(name: "subtopics") required final List<SubtopicDto> subtopics})
      : _subtopics = subtopics;

  factory _$TopicDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicDtoImplFromJson(json);

  @override
  @JsonKey(name: "topic_title", defaultValue: 'null Title')
  final String topicTitle;
  final List<SubtopicDto> _subtopics;
  @override
  @JsonKey(name: "subtopics")
  List<SubtopicDto> get subtopics {
    if (_subtopics is EqualUnmodifiableListView) return _subtopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtopics);
  }

  @override
  String toString() {
    return 'TopicDto(topicTitle: $topicTitle, subtopics: $subtopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicDtoImpl &&
            (identical(other.topicTitle, topicTitle) ||
                other.topicTitle == topicTitle) &&
            const DeepCollectionEquality()
                .equals(other._subtopics, _subtopics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, topicTitle, const DeepCollectionEquality().hash(_subtopics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicDtoImplCopyWith<_$TopicDtoImpl> get copyWith =>
      __$$TopicDtoImplCopyWithImpl<_$TopicDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicDtoImplToJson(
      this,
    );
  }
}

abstract class _TopicDto implements TopicDto {
  const factory _TopicDto(
      {@JsonKey(name: "topic_title", defaultValue: 'null Title')
      required final String topicTitle,
      @JsonKey(name: "subtopics")
      required final List<SubtopicDto> subtopics}) = _$TopicDtoImpl;

  factory _TopicDto.fromJson(Map<String, dynamic> json) =
      _$TopicDtoImpl.fromJson;

  @override
  @JsonKey(name: "topic_title", defaultValue: 'null Title')
  String get topicTitle;
  @override
  @JsonKey(name: "subtopics")
  List<SubtopicDto> get subtopics;
  @override
  @JsonKey(ignore: true)
  _$$TopicDtoImplCopyWith<_$TopicDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
