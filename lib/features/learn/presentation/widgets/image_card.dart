import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

import '../../../../theme/app_colors.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.word,
    required this.onPressed,
    required this.isSelected,
  });

  final WordModel word;
  final Function(WordModel) onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LearnPaddings.imageCardHorizontal,
          vertical: LearnPaddings.imageCardVertical),
      child: GestureDetector(
        onTap: () => onPressed(word),
        child: Container(
          width: MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
          height:
              MediaQuery.of(context).size.height * LearnSizes.imageCardHeight,
          decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? AppColors.mainColor : Colors.transparent,
                width: LearnSizes.imageCardBorderWidth,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              word.pictureLink,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.mainColor,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
