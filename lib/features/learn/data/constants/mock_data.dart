import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

final Topic mockTopic = Topic(topicTitle: "Mock data", subtopics: [
  Subtopic(
      subtopicTitle: 'Бизнес',
      wordCount: 1,
      progress: 20,
      pictureLink:
          'https://app.big-nose.ru:9100/uwords-subtopic-icons/Job_Business.svg',
      wordInfoList: [
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031600000),
            frequency: 87,
            progress: 0),
      ]),
  Subtopic(
      subtopicTitle: 'Карьера',
      wordCount: 2,
      progress: 48,
      pictureLink:
          'https://app.big-nose.ru:9100/uwords-subtopic-icons/Job_Career.svg',
      wordInfoList: [
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031100000),
            frequency: 87,
            progress: 0),
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031100000),
            frequency: 87,
            progress: 0),
      ]),
  Subtopic(
      subtopicTitle: 'Фото',
      wordCount: 3,
      progress: 52,
      pictureLink:
          'https://app.big-nose.ru:9100/uwords-subtopic-icons/Art_Photo.svg',
      wordInfoList: [
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "A4",
                ruValue: "Влад Бумага",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031200000),
            frequency: 20,
            progress: 27),
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "Photographer",
                ruValue: "Фотограф",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031300000),
            frequency: 10,
            progress: 51),
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031400000),
            frequency: 40,
            progress: 100),
      ]),
  Subtopic(
      subtopicTitle: 'Стандарт',
      wordCount: 2,
      progress: 100,
      pictureLink:
          'https://app.big-nose.ru:9100/uwords-subtopic-icons/Default Subtopic.svg',
      wordInfoList: [
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031200000),
            frequency: 87,
            progress: 0),
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "This",
                ruValue: "Это",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031300000),
            frequency: 87,
            progress: 0),
      ]),
  Subtopic(
      subtopicTitle: 'Ремонт дома',
      wordCount: 1,
      progress: 99,
      pictureLink:
          'https://app.big-nose.ru:9100/uwords-subtopic-icons/Home_Repair.svg',
      wordInfoList: [
        WordInfo(
            id: 6,
            word: const WordModel(
                id: 86,
                enValue: "REPAIR",
                ruValue: "Ремонт",
                audioLink:
                    "https://app.big-nose.ru:9100/uwords-voiceover/this.mp3",
                pictureLink:
                    "https://app.big-nose.ru:9100/uwords-picture/this.jpg"),
            userId: 6,
            latestStudy: DateTime.fromMillisecondsSinceEpoch(1641031600000),
            frequency: 87,
            progress: 0),
      ]),
]);
