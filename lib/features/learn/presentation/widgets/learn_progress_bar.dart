import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/widgets/cancel_progress_button.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnProgressBar extends StatelessWidget {
  const LearnProgressBar(
      {super.key, required this.progress, required this.onPressed});
  final int progress;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CancelProgressButton(onPressed: () {}),
        CustomProgressBar(
            width: MediaQuery.of(context).size.width *
                LearnSizes.learnProgressbarWidth,
            percent: progress),
        SvgPicture.asset(
          AppImageSource.learningHearts,
          height: 24,
        ),
      ],
    );
  }
}
