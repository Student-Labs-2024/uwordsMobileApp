import 'package:uwords/features/global/data/models/pair_model.dart';

class OtherProfileConstants {
  static const String staticticsScreen = 'staticticsScreen';
  static const String achievementsScreen = 'achievementsScreen';
  static const String haventName = 'Nameless';
  static const String mockSubscriptionData = '00.00.0000';

  static const int learnedProgress = 100;
  static const int almostLearnedProgress = 50;

  static const int percentFor100Icon = 100;
  static const int percentFor70Icon = 70;
  static const int percentFor50Icon = 50;
  static const int percentFor20Icon = 20;

  static const int secondsInHour = 3600;

  static Pair<double, int> getTimeAndTypeTime(int seconds) {
    double result = seconds / secondsInHour;
    if (result > 1) {
      return Pair<double, int>(result, 1);
    } else {
      result *= 60;
      return Pair<double, int>(result, 2);
    }
  }
}
