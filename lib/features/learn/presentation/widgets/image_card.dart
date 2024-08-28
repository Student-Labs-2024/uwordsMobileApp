import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.wordImage,
    required this.onPressed,
    required this.state,
  });

  final String wordImage;
  final VoidCallback onPressed;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LearnPaddings.imageCardHorizontal,
          vertical: LearnPaddings.imageCardVertical),
      child: GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          width: MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
          height:
              MediaQuery.of(context).size.height * LearnSizes.imageCardHeight,
          decoration: BoxDecoration(
              border: state != OtherLearnConstants.stateZero
                  ? GradientBoxBorder(
                      gradient: OtherLearnConstants.getGradient(state),
                      width: LearnSizes.wordInputBorder,
                    )
                  : null,
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusLarge)),
          child: CustomImageNetworkView(
            imageSource: wordImage,
            darken: state == OtherLearnConstants.stateActive,
            width:
                MediaQuery.of(context).size.width * LearnSizes.imageCardWidth,
            height:
                MediaQuery.of(context).size.height * LearnSizes.imageCardHeight,
            clipRadius: GlobalSizes.borderRadiusLarge,
          ),
        ),
      ),
    );
  }
}
