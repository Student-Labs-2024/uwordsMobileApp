import 'dart:async';
import 'dart:io';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uwords/common/utils/valid_string_check.dart';
import 'package:uwords/env.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/main/bloc/audio_link_bloc/audio_link_bloc.dart';
import 'package:uwords/features/main/bloc/record_bloc/record_bloc.dart';
import 'package:uwords/features/main/presentation/constants/box_shadows.dart';
import 'package:uwords/features/main/presentation/constants/home_page_paddings.dart';
import 'package:uwords/features/main/presentation/constants/home_page_sizes.dart';
import 'package:uwords/features/main/presentation/widgets/record_button.dart';
import 'package:uwords/features/websoket_exceptions/websocket_service.dart';
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

  final IExceptionWebsocketService webSocketService =
      GetIt.instance.get<IExceptionWebsocketService>();
  final StreamController<String> errorStreamController =
      StreamController<String>.broadcast();
  FlutterSoundRecorder? _mRecorder = FlutterSoundRecorder();
  bool _mRecorderIsInited = false;
  String _securedPath = '';
  bool isRecording = false;

  @override
  void initState() {
    super.initState();
    _connect();
    openTheRecorder().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
  }

  void _connect() async {
    await webSocketService.connect(websocketLink, errorStreamController);
    webSocketService.listenForErrors();
  }

  @override
  void dispose() {
    _mRecorder!.closeRecorder();
    _mRecorder = null;
    webSocketService.disconnect();

    super.dispose();
  }

  Future<void> openTheRecorder() async {
    await _mRecorder!.openRecorder();
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth |
              AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode: AVAudioSessionMode.spokenAudio,
      avAudioSessionRouteSharingPolicy:
          AVAudioSessionRouteSharingPolicy.defaultPolicy,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
      androidAudioAttributes: const AndroidAudioAttributes(
        contentType: AndroidAudioContentType.speech,
        flags: AndroidAudioFlags.none,
        usage: AndroidAudioUsage.voiceCommunication,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      androidWillPauseWhenDucked: true,
    ));
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

    String dato = "${DateTime.now().millisecondsSinceEpoch.toString()}.wav";
    Directory appDirec =
        Directory("${appDocDirectory.path}/$jrecordDirectory/");
    if (await appDirec.exists()) {
      String patho = "${appDirec.path}$dato";
      await _mRecorder!.startRecorder(
        toFile: patho,
        codec: Codec.pcm16WAV,
      );
      _securedPath = patho;
    } else {
      appDirec.create(recursive: true);
      String patho = "${appDirec.path}$dato";
      await _mRecorder!.startRecorder(
        toFile: patho,
        codec: Codec.pcm16WAV,
      );
      _securedPath = patho;
    }
    setState(() {
      isRecording = true;
    });
  }

  Future<String> stopRecorder() async {
    await _mRecorder!.stopRecorder();
    setState(() {
      isRecording = false;
    });
    return _securedPath;
  }

  Future<bool> _requestPermission() async {
    if (!kIsWeb) {
      bool granted = await Permission.microphone.isGranted;
      bool denied = await Permission.microphone.isDenied;
      bool deniedPerm = await Permission.microphone.isPermanentlyDenied;
      if (!granted ||
          denied ||
          deniedPerm ||
          await Permission.microphone.isRestricted) {
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
          gradient: AppColors.backgroundGradient,
        ),
        child: _mRecorderIsInited
            ? SafeArea(
                child: Stack(
                  children: [
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height *
                            HomePageComponentSizes.backgroundBubbles,
                        child: Image.asset(
                          fit: BoxFit.cover,
                          AppImageSource.homeScreenBackground,
                          width: MediaQuery.of(context).size.width,
                        ),
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
                                            isHidden: false,
                                            isErrorDisplay: true,
                                            hintText:
                                                AppLocalizations.of(context)
                                                    .videoLink,
                                            isNotError: state.maybeWhen(
                                              failed: (m) => () => false,
                                              orElse: () => () =>
                                                  isValidYoutubeUrl(
                                                      url: textEditingController
                                                          .text),
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
                                                        .invalidLink),
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
                                          state.maybeMap(
                                            sended: (value) =>
                                                AppImageSource.sendedIco,
                                            failed: (value) =>
                                                AppImageSource.failedIcon,
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
                                                  BorderRadius.circular(
                                                      GlobalSizes
                                                          .borderRadiusSmall),
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
                        const SizedBox(),
                        const SizedBox()
                      ],
                    ),
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
