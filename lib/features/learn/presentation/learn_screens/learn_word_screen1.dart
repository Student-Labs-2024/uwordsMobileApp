import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_progress_bar.dart';
import 'package:uwords/features/learn/presentation/widgets/playsound_button.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage1 extends StatefulWidget {
  const LearnWordPage1(
      {super.key,
      required this.word,
      required this.goNextScreen,
      required this.quit,
      required this.progress});

  final WordModel word;
  final VoidCallback goNextScreen;
  final VoidCallback quit;
  final int progress;

  @override
  State<LearnWordPage1> createState() => LearnWordPage1State();
}

class LearnWordPage1State extends State<LearnWordPage1> {
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
                              progress: widget.progress,
                              onPressed: widget.quit),
                        ),
                        Text(AppLocalizations.of(context).listenAndRemember,
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
                            clipRadius: 20),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnPlaysoundButtonTop,
                              bottom: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnPlaysoundButtonBottom),
                          child: PlaysoundButton(
                            onPressed: () => context.read<PlayerBloc>().add(
                                PlayerEvent.playAudio(widget.word.audioLink)),
                          ),
                        ),
                        Text(
                          widget.word.enValue,
                          style: LearnTextStyles.wordScreenTitle,
                        ),
                        Text(widget.word.ruValue,
                            style: LearnTextStyles.wordScreenSubtitle),
                        const Spacer(),
                        BubbleButton(null,
                            maximumWidth: MediaQuery.of(context).size.height,
                            onPressed: widget.goNextScreen,
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
