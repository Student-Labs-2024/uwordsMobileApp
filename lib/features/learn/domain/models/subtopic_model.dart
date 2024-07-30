import 'package:uwords/features/learn/domain/models/word_info.dart';

class Subtopic {
  Subtopic({
    required this.subtopicTitle,
    required this.wordCount,
    required this.progress,
    required this.pictureLink,
    required this.wordInfoList,
  });
  final String subtopicTitle;
  final int wordCount;
  final int progress;
  final String pictureLink;
  final List<WordInfo> wordInfoList;
}
