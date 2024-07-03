import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/letter_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_input.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnWordPage2 extends StatefulWidget {
  const LearnWordPage2({super.key, required this.word});

  final WordModel word;

  @override
  State<LearnWordPage2> createState() => LearnWordPage2State();
}

class LearnWordPage2State extends State<LearnWordPage2> {
  String answer = '';
  bool answerCorrect = false;

  List<String> letters = [];
  @override
  void initState() {
    super.initState();
    letters = widget.word.enValue.split('');
  }

  pressLetterButton(String letter, bool selected) {
    if (selected) {
      setState(() {
        answer += letter;
      });
    } else {
      int lastIndex = answer.lastIndexOf(letter);
      if (lastIndex != -1) {
        setState(() {
          answer =
              answer.substring(0, lastIndex) + answer.substring(lastIndex + 1);
        });
      }
    }

    if (answer.length == widget.word.enValue.length) {
      if (answer == widget.word.enValue) {
        answerCorrect = true;
      }
    } else {
      answerCorrect = false;
    }
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    widget.word.pictureLink,
                    fit: BoxFit.contain,
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
                    height: 360,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: WordInput(text: answer),
            ),
            Wrap(
              spacing: 8.0, // Горизонтальный отступ между элементами
              runSpacing: 8.0, // Вертикальный отступ между строками
              children: letters
                  .map((l) =>
                      LetterButton(text: l, onPressed: pressLetterButton))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: BigButton(
                text: 'Далее',
                onPressed: () {
                  if (answerCorrect) {
                    context.go("/learn/screen1/screen2/screen3",
                        extra: widget.word);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
