import 'package:flutter/material.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

import '../../../../theme/app_colors.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({
    super.key,
    required this.word,
  });

  final WordModel word;

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 9, bottom: 9),
      child: GestureDetector(
        onTap: () => setState(() {
          isSelected = !isSelected;
        }),
        child: Container(
          width: MediaQuery.of(context).size.width * 146 / 375,
          height: MediaQuery.of(context).size.height * 146 / 812,
          decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? AppColors.mainColor : Colors.transparent,
                width: 6,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.5),
            child: Image.network(
              widget.word.pictureLink,
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
