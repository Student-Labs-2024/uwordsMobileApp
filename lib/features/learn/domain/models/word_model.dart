class WordModel {
  final int id;
  final dynamic category;
  final String enValue;
  final String ruValue;
  final String audioLink;
  final String pictureLink;

  const WordModel({
    required this.id,
    required this.category,
    required this.enValue,
    required this.ruValue,
    required this.audioLink,
    required this.pictureLink,
  });
}
