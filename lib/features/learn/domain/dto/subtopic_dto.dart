import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

part 'subtopic_dto.freezed.dart';
part 'subtopic_dto.g.dart';

@freezed
class SubtopicDto with _$SubtopicDto {
  const factory SubtopicDto({
    @JsonKey(name: "title", defaultValue: 'null subTitle')
    required String subtopicTitle,
    @JsonKey(name: "topic_title", defaultValue: 'null topic_title') required String topicTitle,
    @JsonKey(name: "word_count", defaultValue: 0) required int wordCount,
    @JsonKey(name: "progress", defaultValue: 0) required int progress,
    @JsonKey(name: "pictureLink", defaultValue: '') required String pictureLink,
    @JsonKey(name: "words", defaultValue: []) required List<WordInfoDto> words,
  }) = _SubtopicDto;

  factory SubtopicDto.fromJson(Map<String, Object?> json) =>
      _$SubtopicDtoFromJson(json);
}
