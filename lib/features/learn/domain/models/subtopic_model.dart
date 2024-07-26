import 'package:uwords/features/learn/domain/models/word_info.dart';

class Subtopic {
  Subtopic({
    required this.subtopicTitle,
    required this.wordInfoList,
  });
  final String subtopicTitle;
  final List<WordInfo> wordInfoList;
}
