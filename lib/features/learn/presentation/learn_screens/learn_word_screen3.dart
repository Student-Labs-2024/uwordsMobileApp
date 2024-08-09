import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_progress_bar.dart';
import 'package:uwords/features/learn/presentation/widgets/speech_button.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LearnWordPage3 extends StatefulWidget {
  const LearnWordPage3(
      {super.key,
      required this.word,
      required this.goNextScreen,
      required this.quit,
      required this.progress,
      required this.hp});

  final WordModel word;
  final void Function(String) goNextScreen;
  final VoidCallback quit;
  final int progress;
  final int hp;

  @override
  State<LearnWordPage3> createState() => LearnWordPage3State();
}

class LearnWordPage3State extends State<LearnWordPage3> {
  final SpeechToText _speechToText = GetIt.instance.get<SpeechToText>();
  String _lastWords = '';

  bool isAnswerCorrect = false;

  String buttonState = OtherLearnConstants.stateZero;

  void pressSpeechButton() async {
    if (_speechToText.isNotListening) {
      await _speechToText.listen(onResult: _onSpeechResult, localeId: 'en_001');
      _lastWords = '';
      setState(() {});
    } else {
      await _speechToText.stop();
      setState(() {});
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    log('_speechToText result');
    log(_lastWords);
    setState(() {
      buttonState = OtherLearnConstants.stateActive;
      _lastWords = result.recognizedWords;
    });
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    if (!_speechToText.isAvailable) {
      await _speechToText.initialize();
    }
  }

  bool compareWords(String userWord, String answer) {
    String lowerUserWord = userWord.toLowerCase();
    String lowerAnswer = answer.toLowerCase();
    return lowerUserWord == lowerAnswer;
  }

  void onPressBottomButton() {
    if (compareWords(_lastWords, widget.word.enValue)) {
      setState(() {
        isAnswerCorrect = true;
      });
      widget.goNextScreen(OtherLearnConstants.stateSuccess);
    } else {
      widget.goNextScreen(OtherLearnConstants.stateWrong);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: AppColors.backgroundGradient,
            ),
            child: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height *
                            LearnPaddings.bubbleBackgroundTop),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      AppImageSource.testScreenBubbles,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width *
                            LearnPaddings.wordScreenHorizontal),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: LearnPaddings.learnProgressTop,
                              bottom: LearnPaddings.learnProgressBottom),
                          child: LearnProgressBar(
                              hp: widget.hp,
                              progress: widget.progress,
                              onPressed: widget.quit),
                        ),
                        Text(AppLocalizations.of(context).clickAndSpeak,
                            style: LearnTextStyles.wordScreenDescription),
                        SizedBox(
                            height: MediaQuery.of(context).size.height *
                                LearnPaddings.learnDescriptionBottom),
                        CustomImageNetworkView(
                            imageSource: widget.word.pictureLink,
                            width: MediaQuery.of(context).size.width *
                                LearnSizes.imageWidth,
                            height: MediaQuery.of(context).size.height *
                                LearnSizes.imageHeight,
                            clipRadius: GlobalSizes.borderRadiusVeryLarge),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnSpeechButtonTop,
                              bottom: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnSpeechButtonBottom),
                          child: SpeechButton(
                              isPressed: _speechToText.isListening,
                              onPressed: pressSpeechButton),
                        ),
                        InkWell(
                          onTap: () => widget
                              .goNextScreen(OtherLearnConstants.stateCantTell),
                          child: Text(
                            AppLocalizations.of(context).cantTell,
                            style: AppTextStyles.learnCant,
                          ),
                        ),
                        const Spacer(),
                        BubbleButton(null,
                            state: buttonState,
                            maximumWidth: MediaQuery.of(context).size.height,
                            onPressed: onPressBottomButton,
                            text: AppLocalizations.of(context).next,
                            textStyle: LearnTextStyles.bubbleButton),
                        const SizedBox(
                          height: LearnPaddings.learnBottom,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
