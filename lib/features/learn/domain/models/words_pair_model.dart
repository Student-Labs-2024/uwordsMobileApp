import 'package:uwords/features/learn/domain/models/word_model.dart';

class WordsPairModel {
  List<WordModel> wordAttendants;
  WordModel selectedWord;

  WordsPairModel({
    required this.wordAttendants,
    required this.selectedWord,
  });
}
