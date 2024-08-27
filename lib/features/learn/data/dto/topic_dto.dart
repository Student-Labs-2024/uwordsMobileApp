import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/learn/data/dto/subtopic_dto.dart';

part 'topic_dto.freezed.dart';
part 'topic_dto.g.dart';

@freezed
class TopicDto with _$TopicDto {
  const factory TopicDto({
    @JsonKey(name: "title", defaultValue: 'null Title')
    required String topicTitle,
    @JsonKey(
      name: "subtopics",
    )
    required List<SubtopicDto> subtopics,
  }) = _TopicDto;

  factory TopicDto.fromJson(Map<String, Object?> json) =>
      _$TopicDtoFromJson(json);
}
