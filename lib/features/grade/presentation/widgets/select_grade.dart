import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/grade/presentation/constants/grade_sizes.dart';
import 'package:uwords/features/grade/presentation/constants/other_grade_constants.dart';
import 'package:uwords/theme/image_source.dart';

class SelectGrade extends StatefulWidget {
  const SelectGrade({
    super.key,
    required this.onChoose,
  });

  final Function(int) onChoose;

  @override
  State<SelectGrade> createState() => _SelectGradeState();
}

class _SelectGradeState extends State<SelectGrade> {
  List<Pair<int, Pair<String, String>>> getImages() {
    return [
      Pair(1, Pair(AppImageSource.grade1, AppImageSource.grade1Active)),
      Pair(2, Pair(AppImageSource.grade2, AppImageSource.grade2Active)),
      Pair(3, Pair(AppImageSource.grade3, AppImageSource.grade3Active)),
      Pair(4, Pair(AppImageSource.grade4, AppImageSource.grade4Active)),
      Pair(5, Pair(AppImageSource.grade5, AppImageSource.grade5Active)),
    ];
  }

  int selected = OtherGradeConstants.standartGrade;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width *
          GradeSizes.bigImageSize *
          OtherGradeConstants.heightModifier,
      child: Stack(
        children: [
          SizedBox(
            child: Center(
              child: SvgPicture.asset(
                AppImageSource.gradeBack,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...getImages().map((el) => IconButton(
                    onPressed: () {
                      widget.onChoose(el.first);
                      setState(() {
                        selected = el.first;
                      });
                    },
                    icon: Image.asset(
                      selected == el.first ? el.second.second : el.second.first,
                      height: selected == el.first
                          ? MediaQuery.of(context).size.width *
                              GradeSizes.bigImageSize
                          : MediaQuery.of(context).size.width *
                              GradeSizes.smallImageSize,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
