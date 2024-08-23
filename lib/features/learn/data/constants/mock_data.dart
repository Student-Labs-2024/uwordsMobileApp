import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

final Topic mockTopic = Topic(topicTitle: "Mock data", subtopics: [
  Subtopic(
      subtopicTitle: 'Бизнес',
      topicTitle: "Mock data",
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
      topicTitle: "Mock data",
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
      topicTitle: "Mock data",
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
      topicTitle: "Mock data",
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
      topicTitle: "Mock data",
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

final Subtopic subtopicTest = Subtopic(
    subtopicTitle: 'Фото',
    topicTitle: "Mock data with one subtopic",
    wordCount: 3,
    progress: 52,
    pictureLink:
        'https://app.big-nose.ru:9100/uwords-subtopic-icons/Art_Photo.svg',
    wordInfoList: [
      WordInfo(
          id: 0,
          word: const WordModel(
              id: 0,
              enValue: 'Street',
              ruValue: 'Улица',
              audioLink: 'audioLink',
              pictureLink:
                  'https://get.wallhere.com/photo/street-light-city-street-cityscape-car-urban-building-sky-winter-road-house-evening-morning-traffic-town-highway-transport-Manhattan-metropolis-asphalt-infrastructure-pedestrian-tree-downtown-plant-newyork-nyc-landmark-daytime-suburb-lane-urban-area-woody-plant-metropolitan-area-neighbourhood-residential-area-road-surface-cabs-thoroughfare-885905.jpg'),
          userId: 0,
          latestStudy: null,
          frequency: 0,
          progress: 1),
      WordInfo(
          id: 1,
          word: const WordModel(
              id: 1,
              enValue: 'Mountain',
              ruValue: 'Гора',
              audioLink: 'audioLink',
              pictureLink:
                  'https://get.wallhere.com/photo/landscape-mountains-nature-snow-winter-mountain-pass-Alps-summit-plateau-ridge-mountain-weather-season-Massif-adventure-mountainous-landforms-landform-geographical-feature-geological-phenomenon-mountain-range-mountaineering-cirque-288828.jpg'),
          userId: 1,
          latestStudy: null,
          frequency: 0,
          progress: 0),
      WordInfo(
          id: 2,
          word: const WordModel(
              id: 2,
              enValue: 'Field',
              ruValue: 'Поле',
              audioLink: 'audioLink',
              pictureLink:
                  'https://img.goodfon.com/original/2048x1363/a/9b/leto-zelen-les-pole-trava-derevia-nebo-solntse-hdr.jpg'),
          userId: 2,
          latestStudy: null,
          frequency: 0,
          progress: 2),
      WordInfo(
          id: 3,
          word: const WordModel(
              id: 3,
              enValue: 'Lake',
              ruValue: 'Озеро',
              audioLink: 'audioLink',
              pictureLink:
                  'https://s1.1zoom.me/big0/21/Scenery_Mountains_Lake_489390.jpg'),
          userId: 3,
          latestStudy: null,
          frequency: 0,
          progress: 3),
    ]);
final mockTopicWithOneSubtopic =
    Topic(topicTitle: "Mock data with one subtopic", subtopics: [subtopicTest]);
