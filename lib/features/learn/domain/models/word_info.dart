import 'package:uwords/features/learn/domain/models/word_model.dart';

class WordInfo {
  final int id;
  final WordModel word;
  final String userId;
  final int frequency;
  final double progress;
  final String? latestStudy;

  WordInfo({
    required this.id,
    required this.word,
    required this.userId,
    required this.latestStudy,
    required this.frequency,
    required this.progress,
  });
}
