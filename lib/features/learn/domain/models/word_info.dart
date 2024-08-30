import 'package:uwords/features/learn/domain/models/word_model.dart';

class WordInfo {
  final int id;
  final WordModel word;
  final int userId;
  final int frequency;
  final int progress;
  final List<String> additionalPictures;
  final DateTime? latestStudy;

  WordInfo({
    required this.id,
    required this.word,
    required this.userId,
    required this.latestStudy,
    required this.frequency,
    required this.progress,
    required this.additionalPictures,
  });
}

Comparator<WordInfo> wordFrequencyComparator =
    (a, b) => a.frequency.compareTo(b.frequency);

Comparator<WordInfo> wordReverseProgressComparator =
    (a, b) => b.progress.compareTo(a.progress);

Comparator<WordInfo> wordProgressComparator =
    (a, b) => a.progress.compareTo(b.progress);

Comparator<WordInfo> wordLatestStudyComparator = (a, b) {
  if (a.latestStudy == null && b.latestStudy == null) {
    return 0;
  } else if (a.latestStudy == null) {
    return 1;
  } else if (b.latestStudy == null) {
    return -1;
  } else {
    return a.latestStudy!.compareTo(b.latestStudy!);
  }
};
