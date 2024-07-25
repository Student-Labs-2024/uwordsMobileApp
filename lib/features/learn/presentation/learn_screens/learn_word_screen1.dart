import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage1 extends StatefulWidget {
  const LearnWordPage1(
      {super.key,
      required this.word,
      required this.goNextScreen,
      required this.quit});

  final WordModel word;
  final VoidCallback goNextScreen;
  final VoidCallback quit;

  @override
  State<LearnWordPage1> createState() => LearnWordPage1State();
}

class LearnWordPage1State extends State<LearnWordPage1> {
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
                Container(
                  height: LearnSizes.playButtonSize,
                  width: LearnSizes.playButtonSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.darkMainColor,
                    ),
                    onPressed: () => context
                        .read<PlayerBloc>()
                        .add(PlayerEvent.playAudio(widget.word.audioLink)),
                    icon: const Icon(
                      Icons.volume_up_outlined,
                      color: AppColors.whiteColor,
                      size: LearnSizes.playButtonIconSize,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      widget.word.enValue,
                      style: LearnTextStyles.wordScreenTitle,
                    ),
                    Text(widget.word.ruValue,
                        style: LearnTextStyles.wordScreenSubtitle)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: LearnPaddings.bottom),
                  child: BigButton(
                    text: AppLocalizations.of(context).next,
                    onPressed: widget.goNextScreen,
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
