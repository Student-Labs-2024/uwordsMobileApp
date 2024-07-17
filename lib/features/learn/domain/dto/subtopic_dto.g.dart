// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtopic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubtopicDtoImpl _$$SubtopicDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubtopicDtoImpl(
      subtopicTitle: json['subtopic_title'] as String? ?? 'null subTitle',
      words: (json['words'] as List<dynamic>)
          .map((e) => WordInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubtopicDtoImplToJson(_$SubtopicDtoImpl instance) =>
    <String, dynamic>{
      'subtopic_title': instance.subtopicTitle,
      'words': instance.words,
    };
