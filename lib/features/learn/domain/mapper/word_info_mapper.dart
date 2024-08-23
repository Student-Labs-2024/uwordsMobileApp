import 'package:uwords/features/learn/domain/dto/word_info_dto.dart';
import 'package:uwords/features/learn/domain/mapper/word_model_mapper.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';

extension WordInfoMapper on WordInfoDto {
  WordInfo toModel() => WordInfo(
        id: id,
        word: word.toModel(),
        userId: userId,
        latestStudy: latestStudy,
        frequency: frequency,
        progress: progress,
      );
}

extension WordInfoListMapper on List<WordInfoDto> {
  List<WordInfo> toModel() {
    return map((wordInfoDto) => wordInfoDto.toModel()).toList();
  }
}
