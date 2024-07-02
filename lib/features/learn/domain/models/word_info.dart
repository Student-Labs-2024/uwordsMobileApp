import 'package:uwords/features/learn/domain/models/word_model.dart';

class WordInfo {
  final int id;
  final WordModel word;
  final String userId;
  final String? topicId;
  final int frequency;
  final double progress;

  WordInfo({
    required this.id,
    required this.word,
    required this.userId,
    required this.topicId,
    required this.frequency,
    required this.progress,
  });
}
