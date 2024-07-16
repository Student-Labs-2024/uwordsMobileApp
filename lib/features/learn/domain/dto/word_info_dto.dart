import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/learn/domain/dto/word_model_dto.dart';

part 'word_info_dto.freezed.dart';
part 'word_info_dto.g.dart';

@freezed
class WordInfoDto with _$WordInfoDto {
  const factory WordInfoDto({
    @JsonKey(name: "id", defaultValue: 0) required int id,
    @JsonKey(
      name: "word",
    )
    required WordModelDto word,
    @JsonKey(name: "user_id", defaultValue: "1") required String userId,
    @JsonKey(name: "topic_id", defaultValue: null) required String? topicId,
    @JsonKey(name: "frequency", defaultValue: 0) required int frequency,
    @JsonKey(name: "progress", defaultValue: 0.0) required double progress,
  }) = _WordInfoDto;

  factory WordInfoDto.fromJson(Map<String, Object?> json) =>
      _$WordInfoDtoFromJson(json);
}
