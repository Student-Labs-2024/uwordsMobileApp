import 'package:uwords/features/learn/domain/dto/topic_dto.dart';
import 'package:uwords/features/learn/domain/mapper/subtopic_mapper.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';

extension TopicMapper on TopicDto {
  Topic toModel() => Topic(
        topicTitle: topicTitle,
        subtopics: subtopics.toModel(),
      );
}
