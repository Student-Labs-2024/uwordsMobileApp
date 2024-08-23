import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';
import 'package:uwords/features/main/data/main_client.dart';

class AudioDataSource implements IAudioDataSource {
  static Dio dio = Dio();
  final client = MainClient(dio);

  @override
  Future<void> sendFile(
      {required String audioPath, required String accessToken}) async {
    final audioData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        audioPath,
      ),
    });
    await client
        .sendAudio("Bearer $accessToken", audioData)
        .then((value) => log("Файл отправлен"));
  }

  @override
  Future<void> sendLink(
      {required String link, required String accessToken}) async {
    await client
        .sendLink("Bearer $accessToken", link)
        .then((value) => log("$link отправлен"));
  }
}
