import 'package:uwords/features/learn/domain/models/subtopic_model.dart';

class Topic {
  Topic({
    required this.topicTitle,
    required this.subtopics,
  });
  final String topicTitle;
  final List<Subtopic> subtopics;
}
