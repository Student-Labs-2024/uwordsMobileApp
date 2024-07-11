import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/theme/app_colors.dart';

class RecordButton extends StatelessWidget {
  const RecordButton(
      {super.key, required this.isPressed, required this.onPressed});
  final bool isPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.width * 0.384,
        width: MediaQuery.of(context).size.width * 0.384,
        decoration: BoxDecoration(
          boxShadow: isPressed
              ? []
              : [
                  const BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    blurRadius: 10.0,
                    spreadRadius: 0,
                    offset: Offset(-5, -5),
                  ),
                  const BoxShadow(
                    color: Color.fromRGBO(201, 217, 232, 0.5),
                    blurRadius: 10.0,
                    spreadRadius: 0,
                    offset: Offset(5, 5),
                  ),
                ],
          borderRadius: BorderRadius.circular(55),
          color: AppColors.homePageStartRecord,
          gradient: LinearGradient(
              colors: isPressed
                  ? [
                      Color.fromRGBO(201, 217, 232, 0.8),
                      AppColors.homePageStartRecord,
                    ]
                  : [
                      AppColors.homePageStartRecord,
                      AppColors.homePageStartRecord
                    ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.7]),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            isPressed
                ? Container(
                    height: MediaQuery.of(context).size.width * 0.374,
                    width: MediaQuery.of(context).size.width * 0.374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      color: AppColors.homePageStartRecord,
                    ),
                  )
                : SizedBox(),
            Center(
                child: SvgPicture.asset(
              isPressed
                  ? 'assets/svg/voice_ico.svg'
                  : 'assets/svg/play_ico.svg',
              color: AppColors.darkMainColor,
              height: MediaQuery.of(context).size.height * 0.05,
            )),
            GestureDetector(
              onTap: onPressed,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.384,
                width: MediaQuery.of(context).size.width * 0.384,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55.0),
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ));
  }
}
