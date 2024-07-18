import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uwords/features/main/bloc/audio_link_bloc/audio_link_bloc.dart';
import 'package:uwords/features/main/bloc/record_bloc/record_bloc.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_paddings.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/features/main/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/main/presentation/widgets/record_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';

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
      if (mounted) {
        context.read<RecordBloc>().add(RecordEvent.sendError(
            AppLocalizations.of(context).allowUseMicrophone));
      }
      return;
    }
    Directory appDocDirectory;
    if (Platform.isIOS) {
      appDocDirectory = await getApplicationDocumentsDirectory();
    } else {
      appDocDirectory = (await getExternalStorageDirectory())!;
    }
    final audioPath =
        "${appDocDirectory.path}/audio_records${DateTime.now().millisecondsSinceEpoch}";
    _mRecorder!
        .startRecorder(
      toFile: audioPath,
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
      bool denied = await Permission.microphone.isDenied;
      bool deniedPerm = await Permission.microphone.isPermanentlyDenied;
      if (!granted || denied || deniedPerm) {
        await Permission.microphone.request();
      }
      granted = await Permission.microphone.isGranted;
      return granted;
    }
    return false;
  }

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
        child: _mRecorderIsInited
            ? SafeArea(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        AppImageSource.homeScreenBackground,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: HomePagePaddings.linkTextFieldTop,
                              left: HomePagePaddings.baseHorizontal,
                              right: HomePagePaddings.baseHorizontal),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: HomePagePaddings.baseHorizontal),
                            child: BlocBuilder<AudioLinkBloc, AudioLinkState>(
                              builder:
                                  (BuildContext context, AudioLinkState state) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              HomePageComponentSizes
                                                  .linkTextFieldWidth,
                                          child: CustomTextField(
                                            controller: textEditingController,
                                            hintText:
                                                AppLocalizations.of(context)
                                                    .videoLink,
                                            isError: state.maybeWhen(
                                              failed: (m) => true,
                                              orElse: () => false,
                                            ),
                                            errorMessage: state.maybeWhen(
                                                failed: (m) {
                                                  if (m == 'invalidLink') {
                                                    return AppLocalizations.of(
                                                            context)
                                                        .invalidLink;
                                                  }
                                                  return AppLocalizations.of(
                                                          context)
                                                      .unknowError;
                                                },
                                                orElse: () =>
                                                    AppLocalizations.of(context)
                                                        .unknowError),
                                          )),
                                    ),
                                    SizedBox(
                                        width: (MediaQuery.of(context)
                                                .size
                                                .width) *
                                            HomePageComponentSizes.topSpacing),
                                    Container(
                                      height: HomePageComponentSizes
                                          .linkTextFieldHeight,
                                      decoration: fis.BoxDecoration(
                                          color: AppColors.whiteBackgroundColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: MainBoxShadows.main),
                                      child: IconButton(
                                        constraints: const BoxConstraints(
                                            maxHeight: HomePageComponentSizes
                                                .linkTextFieldHeight),
                                        onPressed: () {
                                          context.read<AudioLinkBloc>().add(
                                              AudioLinkEvent.sendLink(
                                                  textEditingController.text));
                                          textEditingController.clear();
                                        },
                                        icon: SvgPicture.asset(
                                          state.maybeWhen(
                                            sended: () =>
                                                AppImageSource.sendedIco,
                                            orElse: () =>
                                                AppImageSource.sendIco,
                                          ),
                                          color: AppColors.darkMainColor,
                                        ),
                                        iconSize: HomePageComponentSizes
                                            .sendButtonIconSize,
                                        style: ButtonStyle(
                                          fixedSize: WidgetStateProperty.all(
                                              Size(
                                                  (MediaQuery.of(context)
                                                          .size
                                                          .width) *
                                                      HomePageComponentSizes
                                                          .sendButtonWidth,
                                                  HomePageComponentSizes
                                                      .linkTextFieldHeight)),
                                          shape: WidgetStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                String errorMessage =
                                    AppLocalizations.of(context).unknowError;
                                if (message == 'unknownDioError') {
                                  errorMessage = AppLocalizations.of(context)
                                      .unknownDioError;
                                } else if (message == 'lostFilePath') {
                                  errorMessage =
                                      AppLocalizations.of(context).lostFilePath;
                                } else if (message ==
                                    AppLocalizations.of(context)
                                        .allowUseMicrophone) {
                                  errorMessage = AppLocalizations.of(context)
                                      .allowUseMicrophone;
                                }
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(errorMessage)));
                              },
                              sended: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            AppLocalizations.of(context)
                                                .mediaSent)));
                              },
                            );
                          },
                          builder: (BuildContext context, RecordState state) {
                            return RecordButton(
                                isPressed: isRecording,
                                onPressed: () async {
                                  isRecording
                                      ? context.read<RecordBloc>().add(
                                          RecordEvent.sendPath(
                                              await stopRecorder()))
                                      : await record();
                                });
                          },
                        ),
                        const SizedBox(
                          height: HomePageComponentSizes
                              .customTextFieldSummarizedHeight,
                        ),
                      ],
                    )
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: AppColors.darkMainColor,
                ),
              ),
      ),
    );
  }
}
