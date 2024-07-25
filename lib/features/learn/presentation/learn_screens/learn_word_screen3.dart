import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/undesign_constants.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage3 extends StatefulWidget {
  const LearnWordPage3({super.key, required this.word});

  final WordModel word;

  @override
  State<LearnWordPage3> createState() => LearnWordPage3State();
}

class LearnWordPage3State extends State<LearnWordPage3> {
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
                    const SizedBox(
                      height: UnDesignedConstants.smallEmptySpace,
                    ),
                    Container(
                      height: UnDesignedConstants.smallContainer,
                      width: UnDesignedConstants.smallContainer,
                      decoration: LearnDecorButtStyle.wordScreenPopBackBDS,
                      child: ElevatedButton(
                        onPressed: () => context.pop(),
                        style: LearnDecorButtStyle.wordScreenPopBackBS,
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.blackColor,
                          size: UnDesignedConstants.smallIcon,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: UnDesignedConstants.mediumEmptySpace,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        fit: BoxFit.contain,
                        widget.word.pictureLink,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return SizedBox(
                              width: UnDesignedConstants.imageSize *
                                  MediaQuery.of(context).size.width,
                              height:
                                  UnDesignedConstants.heightOfCentralElement,
                              child: const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.mainColor,
                                ),
                              ),
                            );
                          }
                        },
                        width: UnDesignedConstants.imageSize *
                            MediaQuery.of(context).size.width,
                        height: UnDesignedConstants.imageSize,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: UnDesignedConstants.bigContainer,
                  width: UnDesignedConstants.bigContainer,
                  decoration: LearnDecorButtStyle.wordScreenSoundBDS,
                  child: ElevatedButton(
                    onPressed: () => context
                        .read<PlayerBloc>()
                        .add(PlayerEvent.playAudio(widget.word.audioLink)),
                    style: LearnDecorButtStyle.wordScreenSoundBS,
                    child: const Icon(
                      Icons.volume_up_outlined,
                      color: AppColors.mainColor,
                      size: UnDesignedConstants.mediumIcon,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: UnDesignedConstants.bottomPadding),
                  child: BigButton(
                    text: AppLocalizations.of(context).next,
                    onPressed: () => context.go(
                        "/learn/screen1/screen2/screen3/screen4",
                        extra: widget.word),
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
