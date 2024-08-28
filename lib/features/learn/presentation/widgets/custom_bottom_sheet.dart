import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.state,
      required this.buttonText,
      required this.subtitle});

  final VoidCallback onPressed;
  final String title;
  final String subtitle;
  final String buttonText;
  final String state;

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  double getHeight() {
    switch (widget.state) {
      case OtherLearnConstants.stateLoseHealth:
        return LearnSizes.bottomSheetLoseHealthHeight;
      case OtherLearnConstants.stateFinal:
        return LearnSizes.bottomSheetFinalHeight;
      default:
        return LearnSizes.bottomSheetHeight;
    }
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds:
              OtherLearnConstants.animationBottomSheetShowMilisecDuration),
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grayColor.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SlideTransition(
            position: _animation,
            child: Container(
              height: MediaQuery.of(context).size.height * getHeight(),
              decoration: BoxDecoration(
                gradient: AppColors.backgroundGradient,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                    topRight:
                        Radius.circular(GlobalSizes.borderRadiusVeryLarge)),
                border: widget.state != OtherLearnConstants.stateZero &&
                        widget.state != OtherLearnConstants.stateCantHear &&
                        widget.state != OtherLearnConstants.stateLoseHealth &&
                        widget.state != OtherLearnConstants.stateFinal &&
                        widget.state != OtherLearnConstants.stateCantSpeak
                    ? GradientBoxBorder(
                        gradient: OtherLearnConstants.getGradient(widget.state),
                        width: LearnSizes.wordInputBorder,
                      )
                    : null,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: LearnPaddings.bottomSheetHorizontal),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          LearnPaddings.bottomSheetTop,
                    ),
                    Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      style: LearnTextStyles.buttomSheetTitle,
                    ),
                    const SizedBox(
                      height: LearnPaddings.bottomSheetTitleBottom,
                    ),
                    Text(
                      widget.subtitle,
                      textAlign: TextAlign.center,
                      style: LearnTextStyles.buttomSheetSubtitle,
                    ),
                    const Spacer(),
                    if (widget.state ==
                        OtherLearnConstants.stateLoseHealth) ...[
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: LearnPaddings.hpLeft *
                                    LearnSizes.hpSizeModifier *
                                    2),
                            child: SvgPicture.asset(
                              AppImageSource.lostHpIcon,
                              height: LearnSizes.hpHeight *
                                  LearnSizes.hpSizeModifier,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: LearnPaddings.hpLeft *
                                    LearnSizes.hpSizeModifier),
                            child: SvgPicture.asset(
                              AppImageSource.lostHpIcon,
                              height: LearnSizes.hpHeight *
                                  LearnSizes.hpSizeModifier,
                            ),
                          ),
                          SvgPicture.asset(
                            AppImageSource.lostHpIcon,
                            height:
                                LearnSizes.hpHeight * LearnSizes.hpSizeModifier,
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                    BubbleButton(
                      null,
                      maximumWidth: MediaQuery.of(context).size.width,
                      onPressed: widget.onPressed,
                      text: widget.buttonText,
                      state: widget.state,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          LearnPaddings.bottomSheetBottom,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
