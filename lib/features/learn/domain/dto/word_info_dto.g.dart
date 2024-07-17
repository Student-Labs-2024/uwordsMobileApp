// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordInfoDtoImpl _$$WordInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$WordInfoDtoImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      word: WordModelDto.fromJson(json['word'] as Map<String, dynamic>),
      userId: json['user_id'] as String? ?? '1',
      latestStudy: json['latest_study'] as String? ?? 'null',
      frequency: (json['frequency'] as num?)?.toInt() ?? 0,
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$WordInfoDtoImplToJson(_$WordInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'word': instance.word,
      'user_id': instance.userId,
      'latest_study': instance.latestStudy,
      'frequency': instance.frequency,
      'progress': instance.progress,
    };
