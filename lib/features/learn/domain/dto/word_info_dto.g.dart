// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordInfoDtoImpl _$$WordInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$WordInfoDtoImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      word: WordModelDto.fromJson(json['word'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      latestStudy: json['latest_study'] == null
          ? null
          : DateTime.parse(json['latest_study'] as String),
      frequency: (json['frequency'] as num?)?.toInt() ?? 0,
      progress: (json['progress'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WordInfoDtoImplToJson(_$WordInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'user_id': instance.userId,
      'latest_study': instance.latestStudy?.toIso8601String(),
      'frequency': instance.frequency,
      'progress': instance.progress,
    };
