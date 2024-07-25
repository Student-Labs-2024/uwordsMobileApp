import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/data/undesign_constants.dart';
import 'package:uwords/features/learn/presentation/mock_data.dart';
import 'package:uwords/features/learn/presentation/widgets/image_card.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage4 extends StatefulWidget {
  const LearnWordPage4({super.key, required this.word});

  final WordModel word;

  @override
  State<LearnWordPage4> createState() => LearnWordPage4State();
}

class LearnWordPage4State extends State<LearnWordPage4> {
  bool chosenImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                SizedBox(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    children: [
                      ImageCard(word: widget.word),
                      const ImageCard(word: MockData.mockWordModel),
                      const ImageCard(word: MockData.mockWordModel),
                      const ImageCard(word: MockData.mockWordModel),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: UnDesignedConstants.bigContainer,
              width: UnDesignedConstants.bigContainer,
              decoration: LearnDecorButtStyle.wordScreenSoundBDS,
              child: ElevatedButton(
                onPressed: () => {},
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
                onPressed: () {
                  context.go("/learn/success", extra: widget.word);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
