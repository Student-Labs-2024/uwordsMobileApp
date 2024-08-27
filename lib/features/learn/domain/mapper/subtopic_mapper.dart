import 'package:uwords/features/learn/data/dto/subtopic_dto.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/mapper/word_info_mapper.dart';

extension SubtopicMapper on SubtopicDto {
  Subtopic toModel() => Subtopic(
        subtopicTitle: subtopicTitle,
        topicTitle: topicTitle,
        wordCount: wordCount,
        progress: progress,
        pictureLink: pictureLink,
        wordInfoList: words.toModel(),
      );
}

extension SubtopicListMapper on List<SubtopicDto> {
  List<Subtopic> toModel() {
    return map((subtopicDto) => subtopicDto.toModel()).toList();
  }
}
