import 'package:flutter/material.dart';
import 'package:uwords/features/subscription/data/subscription_consts.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class AnimatedCardWidget extends StatefulWidget {
  const AnimatedCardWidget(
      {super.key,
      required this.imageString,
      required this.text,
      required this.offesetAnimationPositioned,
      required this.animationDuration});
  final String imageString;
  final String text;
  final double offesetAnimationPositioned;
  final Duration animationDuration;

  @override
  State<AnimatedCardWidget> createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconScaleAnimation;
  late Animation<Offset> _iconOffsetAnimation;
  late Animation<double> _textOpacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _iconScaleAnimation = Tween<double>(
            begin: SubscriptionAnimationNumbers.zero,
            end: SubscriptionAnimationNumbers.one)
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(SubscriptionAnimationNumbers.zeroPointTwo,
            SubscriptionAnimationNumbers.zeroPointSix,
            curve: Curves.easeInOut),
      ),
    );

    _iconOffsetAnimation = Tween<Offset>(
      begin: const Offset(
          SubscriptionAnimationNumbers.zero, SubscriptionAnimationNumbers.zero),
      end: const Offset(SubscriptionAnimationNumbers.minusZeroPointTwo,
          SubscriptionAnimationNumbers.zero),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(SubscriptionAnimationNumbers.zeroPointSix,
            SubscriptionAnimationNumbers.one,
            curve: Curves.easeInOut),
      ),
    );

    _textOpacityAnimation = Tween<double>(
            begin: SubscriptionAnimationNumbers.zero,
            end: SubscriptionAnimationNumbers.one)
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(SubscriptionAnimationNumbers.zeroPointSix,
            SubscriptionAnimationNumbers.one,
            curve: Curves.easeInOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return AnimatedOpacity(
          duration: const Duration(
              milliseconds: SubscriptionsDuration.oneInMilliseconds),
          curve: Curves.easeIn,
          opacity: _textOpacityAnimation.value,
          child: SizedBox(
            height: SubscriptionConsts.animatedCardHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(SubscriptionConsts.borderRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: SubscriptionConsts.bigEmptySpace,
                    vertical: SubscriptionConsts.bigEmptySpace),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(
                          milliseconds:
                              SubscriptionsDuration.pointEighttInMilliseconds),
                      curve: Curves.easeInOut,
                      left: _iconOffsetAnimation.value.dx *
                              MediaQuery.of(context).size.width *
                              widget.offesetAnimationPositioned -
                          MediaQuery.of(context).viewPadding.left -
                          MediaQuery.of(context).viewPadding.right,
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              SubscriptionConsts.widthMultiply07,
                          height: SubscriptionConsts.buttonHeight,
                          child: Transform.scale(
                              scale: _iconScaleAnimation.value,
                              child: Image.asset(widget.imageString)),
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(
                          milliseconds:
                              SubscriptionsDuration.twoSecondsInMilliseconds),
                      curve: Curves.easeIn,
                      opacity: _textOpacityAnimation.value,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                            textAlign: TextAlign.center,
                            maxLines: SubscriptionConsts.twoMaxLines,
                            widget.text,
                            style: LearnTextStyles.bubbleButton),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
