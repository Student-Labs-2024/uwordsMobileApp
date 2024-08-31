import 'package:uwords/features/global/presentation/widgets/constants/other_global_constants.dart';

String pluralizeWords(int count) {
  if (count % 10 == 1 && count % 100 != 11) {
    return OtherGlobalConstants.ruWordForm1;
  } else if ([2, 3, 4].contains(count % 10) &&
      !(count % 100 >= 12 && count % 100 <= 14)) {
    return OtherGlobalConstants.ruWordForm2;
  } else {
    return OtherGlobalConstants.ruWordForm3;
  }
}

String pluralizeDays(int count) {
  if (count % 10 == 1 && count % 100 != 11) {
    return OtherGlobalConstants.ruDayForm1;
  } else if ([2, 3, 4].contains(count % 10) &&
      !(count % 100 >= 12 && count % 100 <= 14)) {
    return OtherGlobalConstants.ruDayForm2;
  } else {
    return OtherGlobalConstants.ruDayForm3;
  }
}
