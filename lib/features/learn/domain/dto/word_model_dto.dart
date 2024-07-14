import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_model_dto.freezed.dart';
part 'word_model_dto.g.dart';

@freezed
class WordModelDto with _$WordModelDto {
  const factory WordModelDto({
    @JsonKey(name: "id", defaultValue: 0) required int id,
    @JsonKey(name: "category", defaultValue: null) required dynamic category,
    @JsonKey(name: "enValue", defaultValue: "Error") required String enValue,
    @JsonKey(name: "ruValue", defaultValue: "Ошибка") required String ruValue,
    @JsonKey(
        name: "audioLink",
        defaultValue: "https://www.youwords.ru:9100/uwords-voiceover/do.mp3")
    required String audioLink,
    @JsonKey(
        name: "pictureLink",
        defaultValue:
            "https://umbrellacreative.com.au/why-you-shouldnt-use-stock-photos/")
    required String pictureLink,
  }) = _WordModelDto;

  factory WordModelDto.fromJson(Map<String, Object?> json) =>
      _$WordModelDtoFromJson(json);
}
