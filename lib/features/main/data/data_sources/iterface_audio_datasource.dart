abstract interface class IAudioDataSource {
  Future<void> sendLink({required String link});
  Future<void> sendFile({required String audioPath});
}
