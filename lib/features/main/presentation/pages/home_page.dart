import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uwords/features/main/bloc/audioLink_bloc/audioLink_bloc.dart';
import 'package:uwords/features/main/bloc/record_bloc/record_bloc.dart';
import 'package:uwords/features/main/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/main/presentation/widgets/record_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter/foundation.dart' show kIsWeb;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  FlutterSoundRecorder? _mRecorder = FlutterSoundRecorder();
  bool _mRecorderIsInited = false;

  bool isRecording = false;

  @override
  void initState() {
    openTheRecorder().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _mRecorder!.closeRecorder();
    _mRecorder = null;
    super.dispose();
  }

  Future<void> openTheRecorder() async {
    await _mRecorder!.openRecorder();
    _mRecorderIsInited = true;
  }

  Future<void> record() async {
    if (!await _requestPermission()) {
      String message = 'Разрешите исп микрофон';
      if (mounted) {
        context.read<RecordBloc>().add(RecordEvent.sendError(message));
      }
    }
    Directory appDocDirectory;
    if (Platform.isIOS) {
      appDocDirectory = await getApplicationDocumentsDirectory();
    } else {
      appDocDirectory = (await getExternalStorageDirectory())!;
    }
    final audioPath =
        "${appDocDirectory.path}/audio_records${DateTime.now().millisecondsSinceEpoch}.mp4";
    _mRecorder!
        .startRecorder(
      //codec: Codec.aacMP4,
      toFile: audioPath, //'tau_file.mp4',
    )
        .then((value) {
      setState(() {
        isRecording = true;
      });
    });
  }

  Future<String> stopRecorder() async {
    String? path;
    await _mRecorder!.stopRecorder().then((value) {
      path = value;
      setState(() {
        isRecording = false;
      });
    });
    return path ?? '';
  }

  Future<bool> _requestPermission() async {
    if (!kIsWeb) {
      bool granted = await Permission.microphone.isGranted;
      if (!granted) {
        await Permission.microphone.request();
      }
      granted = await Permission.microphone.isGranted;
      return granted;
    }
    return false;
  }

  /*somefunc(BuildContext context) async {
    context.read<AudioBloc>().add(AudioEvent.sendPath(await stopRecorder()));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.gradientBackgroundColor1,
            AppColors.gradientBackgroundColor2
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/png/bubbles.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 16, right: 16),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: BlocBuilder<AudioLinkBloc, AudioLinkState>(
                        builder: (BuildContext context, AudioLinkState state) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        80 /
                                        100,
                                    child: CustomTextField(
                                      controller: textEditingController,
                                      hintText: "Ссылка на видео",
                                      isError: state.maybeWhen(
                                        failed: (m) => true,
                                        orElse: () => false,
                                      ),
                                      errorMessage: state.maybeWhen(
                                          failed: (m) => m,
                                          orElse: () => 'Неизвестная ошибка'),
                                    )),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 44,
                                decoration: fis.BoxDecoration(
                                    color: AppColors.whiteBackgroundColor,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      fis.BoxShadow(
                                        color:
                                            Color.fromRGBO(97, 120, 201, 0.26),
                                        blurRadius: 16.0,
                                        spreadRadius: 0,
                                        offset: Offset(4, 4),
                                        inset: false,
                                      ),
                                      fis.BoxShadow(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.08),
                                        blurRadius: 16.0,
                                        spreadRadius: 0,
                                        offset: Offset(2, 2),
                                        inset: false,
                                      ),
                                      fis.BoxShadow(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.1),
                                        blurRadius: 80.0,
                                        spreadRadius: 1,
                                        offset: Offset(2, 2),
                                        inset: true,
                                      ),
                                    ]),
                                child: IconButton(
                                  constraints:
                                      const BoxConstraints(maxHeight: 44),
                                  onPressed: () {
                                    context.read<AudioLinkBloc>().add(
                                        AudioLinkEvent.sendLink(
                                            textEditingController.text));
                                    textEditingController.clear();
                                  },
                                  icon: SvgPicture.asset(
                                    state.maybeWhen(
                                      sended: () => 'assets/svg/sended_ico.svg',
                                      orElse: () => 'assets/svg/send_ico.svg',
                                    ),
                                    color: AppColors.darkMainColor,
                                  ),
                                  iconSize: 14,
                                  style: ButtonStyle(
                                    fixedSize: WidgetStateProperty.all(Size(
                                        (MediaQuery.of(context).size.width -
                                                24 -
                                                24 -
                                                9) *
                                            48 /
                                            318,
                                        44)),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  BlocConsumer<RecordBloc, RecordState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        failed: (message) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        },
                        sended: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Медиа отправлено")));
                        },
                      );
                    },
                    builder: (BuildContext context, RecordState state) {
                      return RecordButton(
                          isPressed: isRecording,
                          onPressed: () async {
                            isRecording
                                ? context.read<RecordBloc>().add(
                                    RecordEvent.sendPath(await stopRecorder()))
                                : await record();
                          });
                    },
                  ),
                  const SizedBox(
                    height: 32 + 44 + 6 + 9.75,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
