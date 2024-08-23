import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/env.dart';

part 'word_model_dto.freezed.dart';
part 'word_model_dto.g.dart';

@freezed
class WordModelDto with _$WordModelDto {
  const factory WordModelDto({
    @JsonKey(name: "id", defaultValue: 0) required int id,
    @JsonKey(name: "enValue", defaultValue: "Error") required String enValue,
    @JsonKey(name: "ruValue", defaultValue: "Ошибка") required String ruValue,
    @JsonKey(name: "audioLink", defaultValue: voiceOverLink)
    required String audioLink,
    @JsonKey(name: "pictureLink", defaultValue: wordPictureLink)
    required String pictureLink,
  }) = _WordModelDto;

  factory WordModelDto.fromJson(Map<String, Object?> json) =>
      _$WordModelDtoFromJson(json);
}
