import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LetterButton extends StatefulWidget {
  const LetterButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function(String, bool) onPressed;

  @override
  State<LetterButton> createState() => LetterButtonState();
}

class LetterButtonState extends State<LetterButton> {
  bool selected = false;

  pressLetterButton() {
    setState(() {
      selected = !selected;
    });

    widget.onPressed(widget.text, selected);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(44, 48),
        padding: EdgeInsets.zero,
      ),
      onPressed: pressLetterButton,
      child: Container(
        width: 40,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? AppColors.mainColor : AppColors.lightgrayColor,
            width: 3,
          ),
        ),
        child: Text(
          widget.text,
          style: LearnTextStyles.wordScreenTextInput,
        ),
      ),
    );
  }
}
