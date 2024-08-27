// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtopic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubtopicDtoImpl _$$SubtopicDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubtopicDtoImpl(
      subtopicTitle: json['title'] as String? ?? 'null subTitle',
      topicTitle: json['topic_title'] as String? ?? 'null topic_title',
      wordCount: (json['word_count'] as num?)?.toInt() ?? 0,
      progress: (json['progress'] as num?)?.toInt() ?? 0,
      pictureLink: json['pictureLink'] as String? ?? '',
      words: (json['words'] as List<dynamic>?)
              ?.map((e) => WordInfoDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$SubtopicDtoImplToJson(_$SubtopicDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.subtopicTitle,
      'topic_title': instance.topicTitle,
      'word_count': instance.wordCount,
      'progress': instance.progress,
      'pictureLink': instance.pictureLink,
      'words': instance.words,
    };
