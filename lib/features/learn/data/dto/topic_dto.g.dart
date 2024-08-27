// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicDtoImpl _$$TopicDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopicDtoImpl(
      topicTitle: json['title'] as String? ?? 'null Title',
      subtopics: (json['subtopics'] as List<dynamic>)
          .map((e) => SubtopicDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopicDtoImplToJson(_$TopicDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.topicTitle,
      'subtopics': instance.subtopics,
    };
