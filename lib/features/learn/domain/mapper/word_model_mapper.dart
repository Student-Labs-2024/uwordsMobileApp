import 'package:uwords/features/learn/domain/dto/word_model_dto.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

extension WordModelMapper on WordModelDto {
  WordModel toModel() => WordModel(
      id: id,
      enValue: enValue,
      ruValue: ruValue,
      audioLink: audioLink,
      pictureLink: pictureLink);
}
