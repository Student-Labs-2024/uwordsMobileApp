import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:uwords/features/main/data/data_sources/iterface_audio_datasource.dart';
import 'package:uwords/features/main/data/main_client.dart';
import 'package:uwords/features/auth/data/auth_client.dart';

// class AudioDataSource implements IAudioDataSource {
//   static Dio dio = Dio();
//   final client = MainClient(dio);
//   @override
//   Future<void> sendFile({required String audioPath}) async {
//     final audioData = FormData.fromMap({
//       'file': await MultipartFile.fromFile(audioPath),
//     });
//     final user = await AuthClient().getUser();
//     if (user != null) {
//       print('ЮЗЕР ЮИД АУДИО ДАТАС ${user.uid}');
//       await client
//           .sendAudio(user.uid, audioData)
//           .then((value) => log("Файл отправлен"));
//     }
//   }

//   @override
//   Future<void> sendLink({required String link}) async {
//     final user = await AuthClient().getUser();
//     if (user != null) {
//       await client
//           .sendLink(user.uid.toString(), link)
//           .then((value) => log("$link отправлен"));
//     }
//   }
// }
