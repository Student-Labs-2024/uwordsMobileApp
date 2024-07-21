import 'package:uwords/env.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

class MockData {
  static const WordModel mockWordModel = WordModel(
    id: 0,
    category: "",
    enValue: "stock",
    ruValue: "стоковое",
    audioLink: voiceOverLink,
    pictureLink: wordPictureLink,
  );
}
