abstract interface class IAudioRepository {
  Future<void> sendLink({required String link});
  Future<void> sendFile({required String audioPath});
}
