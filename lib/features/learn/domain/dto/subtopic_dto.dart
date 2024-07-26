import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';

part 'subtopic_dto.freezed.dart';
part 'subtopic_dto.g.dart';

@freezed
class SubtopicDto with _$SubtopicDto {
  const factory SubtopicDto({
    @JsonKey(name: "subtopic_title", defaultValue: 'null subTitle')
    required String subtopicTitle,
    @JsonKey(
      name: "words",
    )
    required List<WordInfoDto> words,
  }) = _SubtopicDto;

  factory SubtopicDto.fromJson(Map<String, Object?> json) =>
      _$SubtopicDtoFromJson(json);
}
