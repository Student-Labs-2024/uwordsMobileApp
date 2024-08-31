import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_progress_bar.dart';
import 'package:uwords/features/learn/presentation/widgets/progress_image_card.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FinalLearnScreen extends StatefulWidget {
  const FinalLearnScreen(
      {super.key,
      required this.words,
      required this.newProgress,
      required this.quit,
      required this.progress,
      required this.hp,
      required this.goNextScreen});

  final List<WordModel> words;
  final List<int> newProgress;
  final VoidCallback quit;
  final int progress;
  final int hp;
  final void Function(String) goNextScreen;

  @override
  State<FinalLearnScreen> createState() => FinalLearnScreenState();
}

class FinalLearnScreenState extends State<FinalLearnScreen> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  void startAnimation() async {
    await Future.delayed(const Duration(
        milliseconds: OtherLearnConstants.progressMilisec1 +
            OtherLearnConstants.progressMilisec2 +
            OtherLearnConstants.progressMilisec3));
    widget.goNextScreen(OtherLearnConstants.stateFinal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  AppImageSource.testScreenBubblesChooseScreen,
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
                    Text(AppLocalizations.of(context).newStageReached,
                        style: LearnTextStyles.wordScreenDescription),
                    SizedBox(
                        height: MediaQuery.of(context).size.height *
                            LearnPaddings.learnChooseDescriptionBottom),
                    if (widget.words.length == 1)
                      CustomImageNetworkView(
                          imageSource: widget.words[0].pictureLink,
                          width: MediaQuery.of(context).size.width *
                              LearnSizes.imageWidth,
                          height: MediaQuery.of(context).size.height *
                              LearnSizes.imageHeight,
                          clipRadius: GlobalSizes.borderRadiusVeryLarge)
                    else ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width *
                                LearnPaddings.additionalFinalScreenHorizontal),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (widget.words.isNotEmpty)
                              ProgressImageCard(
                                word: widget.words[0],
                                currentProgress: widget.newProgress[0],
                              ),
                            if (widget.words.length > 1)
                              ProgressImageCard(
                                word: widget.words[1],
                                currentProgress: widget.newProgress[1],
                              ),
                          ],
                        ),
                      ),
                      if (widget.words.length > 2)
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width *
                                  LearnPaddings
                                      .additionalFinalScreenHorizontal),
                          child: Row(
                            mainAxisAlignment: widget.words.length > 3
                                ? MainAxisAlignment.spaceBetween
                                : MainAxisAlignment.start,
                            children: [
                              ProgressImageCard(
                                word: widget.words[2],
                                currentProgress: widget.newProgress[2],
                              ),
                              if (widget.words.length > 3)
                                ProgressImageCard(
                                  word: widget.words[3],
                                  currentProgress: widget.newProgress[3],
                                ),
                            ],
                          ),
                        ),
                    ],
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
