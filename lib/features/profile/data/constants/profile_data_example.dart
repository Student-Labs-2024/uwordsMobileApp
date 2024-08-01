import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

class ProfileDataExample {
  static const String userIconExample =
      'https://i.pinimg.com/originals/86/e9/b5/86e9b52d3cfb854b855faa0e7dabfb74.jpg';
  static const String userNameExample = 'KatzeKet';

  static const List<ActivitiesTileDataExample> activitiesTileDataExample = [
    ActivitiesTileDataExample(
        image: 'https://i.ytimg.com/vi/GLR2TW64V6A/maxresdefault.jpg',
        date: '1 августа, 2024',
        title: 'Получено достижение 1 хлоп\nв разделе слова'),
    ActivitiesTileDataExample(
        image: 'https://i.ytimg.com/vi/GLR2TW64V6A/maxresdefault.jpg',
        date: '1 августа, 2024',
        title: 'Завершено изучение топика Еда')
  ];

  static List<int> exampleMetrics = [12, 55, 1, 83];

  static List<Pair<String, int>> exampleAchievements = [
    Pair('onfire', 11),
    Pair('wordsLearned', 16),
    Pair('recordTime', 16),
    Pair('addedFriends', 16)
  ];

  static final List<WordInfo> exampleWords = [
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
        progress: 0),
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
        progress: 20),
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
        progress: 40),
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
        progress: 60),
    WordInfo(
        id: 4,
        word: const WordModel(
            id: 4,
            enValue: 'Forest',
            ruValue: 'Лес',
            audioLink: 'audioLink',
            pictureLink: 'https://s1.1zoom.me/big3/196/396241-svetik.jpg'),
        userId: 4,
        latestStudy: null,
        frequency: 0,
        progress: 80),
    WordInfo(
        id: 5,
        word: const WordModel(
            id: 5,
            enValue: 'Winter',
            ruValue: 'Зима',
            audioLink: 'audioLink',
            pictureLink:
                'https://img3.akspic.ru/crops/7/3/6/1/4/141637/141637-sneg-vetv-sinij-nebo-zimnyaya_doroga-2560x1440.jpg'),
        userId: 5,
        latestStudy: null,
        frequency: 0,
        progress: 100),
  ];
}

class ActivitiesTileDataExample {
  const ActivitiesTileDataExample(
      {required this.image, required this.date, required this.title});
  final String image;
  final String title;
  final String date;
}
