// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordModelDtoImpl _$$WordModelDtoImplFromJson(Map<String, dynamic> json) =>
    _$WordModelDtoImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      enValue: json['enValue'] as String? ?? 'Error',
      ruValue: json['ruValue'] as String? ?? 'Ошибка',
      audioLink: json['audioLink'] as String? ??
          'https://www.youwords.ru:9100/uwords-voiceover/do.mp3',
      pictureLink: json['pictureLink'] as String? ??
          'https://umbrellacreative.com.au/why-you-shouldnt-use-stock-photos/',
    );

Map<String, dynamic> _$$WordModelDtoImplToJson(_$WordModelDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enValue': instance.enValue,
      'ruValue': instance.ruValue,
      'audioLink': instance.audioLink,
      'pictureLink': instance.pictureLink,
    };
