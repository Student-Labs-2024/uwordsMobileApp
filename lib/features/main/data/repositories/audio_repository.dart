import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';

class AudioRepository implements IAudioRepository {
  final IAudioDataSource audioDataSource;

  AudioRepository({required this.audioDataSource});

  @override
  Future<void> sendFile(
      {required String audioPath, required String accessToken}) async {
    await audioDataSource.sendFile(
        audioPath: audioPath, accessToken: accessToken);
  }

  @override
  Future<void> sendLink(
      {required String link, required String accessToken}) async {
    await audioDataSource.sendLink(link: link, accessToken: accessToken);
  }
}
