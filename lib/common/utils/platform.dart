import 'dart:io';

enum CurrentPlatform { android, ios, nonSupported }

CurrentPlatform whichPlatformIs() {
  if (Platform.isAndroid) {
    return CurrentPlatform.android;
  }
  if (Platform.isIOS) {
    return CurrentPlatform.ios;
  } else {
    return CurrentPlatform.nonSupported;
  }
}
