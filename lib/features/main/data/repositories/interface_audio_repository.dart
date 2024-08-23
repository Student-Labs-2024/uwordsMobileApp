abstract interface class IAudioRepository {
  Future<void> sendLink({required String link, required String accessToken});
  Future<void> sendFile(
      {required String audioPath, required String accessToken});
}
