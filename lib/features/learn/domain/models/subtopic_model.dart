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

  DateTime getLatestStudyDate() {
    if (wordInfoList.isEmpty) {
      return DateTime.now();
    }
    return wordInfoList
        .reduce((a, b) => a.latestStudy!.isAfter(b.latestStudy!) ? a : b)
        .latestStudy!;
  }
}

Comparator<Subtopic> wordCountComparator =
    (a, b) => a.wordCount.compareTo(b.wordCount);

Comparator<Subtopic> progressComparator =
    (a, b) => a.progress.compareTo(b.progress);

Comparator<Subtopic> latestStudyDateComparator =
    (a, b) => a.getLatestStudyDate().compareTo(b.getLatestStudyDate()) ;
