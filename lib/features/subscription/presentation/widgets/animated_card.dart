import 'package:flutter/material.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class AnimatedCardWidget extends StatefulWidget {
  const AnimatedCardWidget({super.key, required this.imageString, required this.text, required this.offesetAnimationPositioned, required this.animationDuration});
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

    _iconScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.6, curve: Curves.easeInOut),
      ),
    );

    _iconOffsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(-0.2, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
      ),
    );

    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
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
          duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeIn,
                      opacity: _textOpacityAnimation.value,
          child: SizedBox(
            height: 109,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 28.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                      left: _iconOffsetAnimation.value.dx *
                          MediaQuery.of(context).size.width*widget.offesetAnimationPositioned - MediaQuery.of(context).viewPadding.left - MediaQuery.of(context).viewPadding.right,
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.7,
                          height: 53,
                          child: Transform.scale(
                              scale: _iconScaleAnimation.value,
                              child: Image.asset(widget.imageString)),
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 2000),
                      curve: Curves.easeIn,
                      opacity: _textOpacityAnimation.value,
                      child: Align(
                        alignment: Alignment.centerRight,
                          child: Text(
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            widget.text,
                            style: LearnTextStyles.bubbleButton
                        ),
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
