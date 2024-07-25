import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';

class SuccessfulWordPage extends StatefulWidget {
  const SuccessfulWordPage(
      {super.key,
      required this.word,
      required this.goNextScreen,
      required this.quit});

  final WordModel word;
  final VoidCallback goNextScreen;
  final VoidCallback quit;

  @override
  State<SuccessfulWordPage> createState() => SuccessfulWordPageState();
}

class SuccessfulWordPageState extends State<SuccessfulWordPage> {
  @override
  void initState() {
    super.initState();
    goNextWord();
  }

  void goNextWord() async {
    await Future.delayed(const Duration(seconds: 5));
    widget.goNextScreen();
  }

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
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width *
                      LearnSizes.speechButtonSize,
                  width: MediaQuery.of(context).size.width *
                      LearnSizes.speechButtonSize,
                  decoration: LearnStyles.sucssesfulWordScreenCheckBDS,
                  child: Icon(
                    Icons.check,
                    color: AppColors.greenColor,
                    size: MediaQuery.of(context).size.width *
                        LearnSizes.speechButtonIconSize,
                  ),
                ),
                const SizedBox(
                  height: LearnSizes.successfulScreenCenterSpacing,
                ),
                Text(
                  widget.word.enValue,
                  style: LearnTextStyles.successfulWordScreenTitle,
                ),
              ],
            ),
            const SizedBox(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
