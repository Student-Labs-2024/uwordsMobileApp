import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/presentation/widgets/image_card.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnWordPage4 extends StatefulWidget {
  const LearnWordPage4({super.key, required this.word});

  final WordModel word;

  @override
  State<LearnWordPage4> createState() => LearnWordPage4State();
}

class LearnWordPage4State extends State<LearnWordPage4> {
  bool chosenImage = false;

  final WordModel anotherWord = WordModel(
    id: 0,
    category: "",
    enValue: "stock",
    ruValue: "стоковое",
    audioLink: "https://www.youwords.ru:9100/uwords-voiceover/do.mp3",
    pictureLink:
        "https://big-nose.ru:9100/uwords-picture/element.jpg",
  );

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
                    onPressed: () => context.pop(),
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
                SizedBox(
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    children: [
                      ImageCard(word: widget.word),
                      ImageCard(word: anotherWord),
                      ImageCard(word: anotherWord),
                      ImageCard(word: anotherWord),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 80,
              width: 80,
              decoration: LearnDecorButtStyle.wordScreenSoundBDS,
              child: ElevatedButton(
                onPressed: () => {},
                style: LearnDecorButtStyle.wordScreenSoundBS,
                child: const Icon(
                  Icons.volume_up_outlined,
                  color: AppColors.mainColor,
                  size: 43,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: BigButton(
                text: 'Далее',
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
