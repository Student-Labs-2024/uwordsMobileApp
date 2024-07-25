import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/data/undesign_constants.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';

class SuccessfulWordPage extends StatefulWidget {
  const SuccessfulWordPage({super.key, required this.word});

  final WordModel word;

  @override
  State<SuccessfulWordPage> createState() => SuccessfulWordPageState();
}

class SuccessfulWordPageState extends State<SuccessfulWordPage> {
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
                    onPressed: () => context.go("/learn"),
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
                    widget.word.pictureLink,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return SizedBox(
                          width: UnDesignedConstants.imageSize *
                              MediaQuery.of(context).size.width,
                          height: UnDesignedConstants.heightOfCentralElement,
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
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: UnDesignedConstants.bigContainer,
                  width: UnDesignedConstants.bigContainer,
                  decoration: LearnDecorButtStyle.sucssesfulWordScreenCheckBDS,
                  child: const Icon(
                    Icons.check,
                    color: AppColors.greenColor,
                    size: UnDesignedConstants.mediumIcon,
                  ),
                ),
                const SizedBox(
                  height: UnDesignedConstants.smallEmptySpace,
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
