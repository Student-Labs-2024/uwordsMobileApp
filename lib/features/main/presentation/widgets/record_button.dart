import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class RecordButton extends StatelessWidget {
  const RecordButton(
      {super.key, required this.isPressed, required this.onPressed});
  final bool isPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: (MediaQuery.of(context).size.width) * 146 / 375,
        width: (MediaQuery.of(context).size.width) * 146 / 375,
        decoration: fis.BoxDecoration(
          color: AppColors.homePageStartRecord,
          boxShadow: isPressed
              ? const [
                  fis.BoxShadow(
                    offset: Offset(-4, 4),
                    blurRadius: 1,
                    spreadRadius: 0,
                    color: Color.fromRGBO(201, 217, 232, 0.8),
                    inset: true,
                  ),
                ]
              : const [
                  fis.BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      spreadRadius: 0,
                      blurRadius: 10, //sigmaToR(7),//76
                      offset: Offset(-5, 5), // changes position of shadow
                      blurStyle: BlurStyle.normal),
                  fis.BoxShadow(
                      color: Color.fromRGBO(201, 217, 232, 0.5),
                      spreadRadius: 0,
                      blurRadius: 10, //sigmaToR(7),//76
                      offset: Offset(-5, 5), // changes position of shadow
                      blurStyle: BlurStyle.normal),
                  fis.BoxShadow(
                      color: Color.fromRGBO(144, 148, 151, 0.25),
                      spreadRadius: 0,
                      blurRadius: 4, //sigmaToR(7),//76
                      offset: Offset(0, 4), // changes position of shadow
                      blurStyle: BlurStyle.normal),
                ],
          borderRadius: BorderRadius.circular(55),
        ),
        child: Center(
            child: SvgPicture.asset(
          isPressed ? 'assets/svg/voice_ico.svg' : 'assets/svg/play_ico.svg',
          color: AppColors.darkMainColor,
          height: MediaQuery.of(context).size.height * 0.05,
        )),
      ),
    );
  }
}
