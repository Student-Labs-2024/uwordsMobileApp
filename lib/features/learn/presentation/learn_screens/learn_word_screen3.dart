import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/widgets/speech_button.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage3 extends StatefulWidget {
  const LearnWordPage3(
      {super.key,
      required this.word,
      required this.goNextScreen,
      required this.quit});

  final WordModel word;
  final VoidCallback goNextScreen;
  final VoidCallback quit;

  @override
  State<LearnWordPage3> createState() => LearnWordPage3State();
}

class LearnWordPage3State extends State<LearnWordPage3> {
  final SpeechToText _speechToText = GetIt.instance.get<SpeechToText>();
  String _lastWords = '';

  bool isAnswerCorrect = false;

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
    if (!isAnswerCorrect) {
      if (compareWords(_lastWords, widget.word.enValue)) {
        isAnswerCorrect = true;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context).misspelled)));
      }
    } else {
      widget.goNextScreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: LearnSizes.arrowBackSize,
                      width: LearnSizes.arrowBackSize,
                      margin: const EdgeInsets.only(
                          left: LearnPaddings.backArrowLeft,
                          top: LearnPaddings.backArrowTop),
                      decoration: LearnStyles.wordScreenPopBackBDS,
                      child: ElevatedButton(
                        onPressed: () => widget.quit,
                        style: LearnStyles.wordScreenPopBackBS,
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.blackColor,
                          size: LearnSizes.arrowBackIconSize,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: LearnSizes.topSpacing,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        fit: BoxFit.cover,
                        widget.word.pictureLink,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  LearnSizes.imageWidth,
                              height: MediaQuery.of(context).size.height *
                                  LearnSizes.imageHeight,
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.mainColor,
                                ),
                              ),
                            );
                          }
                        },
                        width: MediaQuery.of(context).size.width *
                            LearnSizes.imageWidth,
                        height: MediaQuery.of(context).size.height *
                            LearnSizes.imageHeight,
                      ),
                    ),
                  ],
                ),
                SpeechButton(
                    isPressed: _speechToText.isListening,
                    onPressed: pressSpeechButton),
                Padding(
                  padding: const EdgeInsets.only(bottom: LearnPaddings.bottom),
                  child: BigButton(
                    text: isAnswerCorrect
                        ? AppLocalizations.of(context).next
                        : AppLocalizations.of(context).check,
                    onPressed: onPressBottomButton,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
