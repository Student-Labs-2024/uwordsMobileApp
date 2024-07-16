import 'package:flutter/material.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/theme/app_colors.dart';

class WordTile extends StatelessWidget {
  const WordTile(
      {super.key,
      required this.data,
      required this.checked,
      required this.onPressed});

  final WordModel data;
  final bool checked;
  final VoidCallback onPressed;

  void playSound() {
    // TODO Add sound
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => playSound(),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  icon: const Icon(
                    Icons.volume_up_outlined,
                    color: AppColors.mainColor,
                    size: 32,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.enValue,
                      style: LearnTextStyles.wordTileTitle,
                    ),
                    Text(
                      data.ruValue,
                      style: LearnTextStyles.wordTileSubtitle,
                    ),
                  ],
                )
              ],
            ),
            Icon(
              checked ? Icons.check_circle_outline : Icons.circle_outlined,
              color: AppColors.lightgrayColor,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
