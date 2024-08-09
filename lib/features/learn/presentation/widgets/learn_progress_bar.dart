import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/widgets/custom_progress_bar.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/widgets/cancel_progress_button.dart';
import 'package:uwords/theme/image_source.dart';

class LearnProgressBar extends StatelessWidget {
  const LearnProgressBar(
      {super.key,
      required this.progress,
      required this.hp,
      required this.onPressed});
  final int progress;
  final int hp;
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
          percent: progress,
          greenOnly: true,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: LearnPaddings.hpLeft * 2),
              child: SvgPicture.asset(
                hp < 3 ? AppImageSource.lostHpIcon : AppImageSource.hpIcon,
                height: LearnSizes.hpHeight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: LearnPaddings.hpLeft),
              child: SvgPicture.asset(
                hp < 2 ? AppImageSource.lostHpIcon : AppImageSource.hpIcon,
                height: LearnSizes.hpHeight,
              ),
            ),
            SvgPicture.asset(
              hp < 1 ? AppImageSource.lostHpIcon : AppImageSource.hpIcon,
              height: LearnSizes.hpHeight,
            ),
          ],
        )
      ],
    );
  }
}
