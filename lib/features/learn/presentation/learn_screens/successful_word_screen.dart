import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                  height: 16,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: LearnDecorButtStyle.wordScreenPopBackBDS,
                  child: ElevatedButton(
                    onPressed: () => context.go("/learm"),
                    style: LearnDecorButtStyle.wordScreenPopBackBS,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    widget.word.pictureLink,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return const SizedBox(
                          width: 350,
                          height: 250,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColors.mainColor,
                            ),
                          ),
                        );
                      }
                    },
                    width: 350,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: LearnDecorButtStyle.sucssesfulWordScreenCheckBDS,
                  child: const Icon(
                    Icons.check,
                    color: AppColors.greenColor,
                    size: 44,
                  ),
                ),
                const SizedBox(
                  height: 16,
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
