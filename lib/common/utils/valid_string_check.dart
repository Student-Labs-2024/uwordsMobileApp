bool isCorrectPassword({required String password}) {
  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasDigits = password.contains(RegExp(r'[0-9]'));
  bool hasMinLength = password.length >= 8;
  bool hasNotcyrillicCharacters = !password.contains(RegExp(r'[а-яА-Я]'));

  return hasLowercase &&
      hasUppercase &&
      hasDigits &&
      hasMinLength &&
      hasNotcyrillicCharacters;
}

bool isCorrectEmail({required String email}) {
  return RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(email) &&
      !email.contains(RegExp(r'[а-яА-Я]'));
}

bool isValidYoutubeUrl({required String url}) {
  final RegExp youtubeRegex = RegExp(
      r'^(?:https?:\/\/)?(?:www\.)?youtube\.com\/(?:watch\?v=|embed\/)([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
  final RegExp youtubeShortRegex = RegExp(
      r'^(?:https?:\/\/)?(?:www\.)?youtu\.be\/([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
  final RegExp youtubeShortsRegex = RegExp(
      r'^(?:https?:\/\/)?(?:www\.)?youtube\.com\/shorts\/([a-zA-Z0-9_-]{11})(?:[&?].*)?$');
  return youtubeRegex.hasMatch(url) ||
      youtubeShortRegex.hasMatch(url) ||
      youtubeShortsRegex.hasMatch(url);
}
