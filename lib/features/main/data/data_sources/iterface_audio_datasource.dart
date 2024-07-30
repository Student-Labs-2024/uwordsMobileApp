abstract interface class IAudioDataSource {
  Future<void> sendLink({required String link, required String accessToken});
  Future<void> sendFile(
      {required String audioPath, required String accessToken});
}
