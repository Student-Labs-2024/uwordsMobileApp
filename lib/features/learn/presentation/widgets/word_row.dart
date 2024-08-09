import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class WordRow extends StatelessWidget {
  const WordRow({super.key, required this.wordInfo});
  final WordInfo wordInfo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 45,
        leading: InkWell(
          onTap: () {
            context
                .read<PlayerBloc>()
                .add(PlayerEvent.playAudio(wordInfo.word.audioLink));
          },
          child: SizedBox(
            width: 20,
            height: 15,
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) {
                return AppColors.violetGradient.createShader(bounds);
              },
              child: SvgPicture.asset(
                AppImageSource.audioGradientIcon,
              ),
            ),
          ),
        ),
        title: Text(wordInfo.word.enValue),
        subtitle: Text(wordInfo.word.ruValue),
        trailing: ShaderMask(
          blendMode: BlendMode.modulate,
          shaderCallback: (bounds) {
            return AppColors.centralGradient.createShader(bounds);
          },
          child: wordInfo.progress >= OtherLearnConstants.thirdQuarterProgress
              ? SvgPicture.asset(AppImageSource.circleFull)
              : wordInfo.progress >= OtherLearnConstants.halfProgress
                  ? SvgPicture.asset(AppImageSource.circleThirdQuarter)
                  : wordInfo.progress >= OtherLearnConstants.quarterProgress
                      ? SvgPicture.asset(AppImageSource.circleSecondQuarter)
                      : wordInfo.progress > OtherLearnConstants.zeroProgress
                          ? SvgPicture.asset(AppImageSource.circleFirstQuarter)
                          : SvgPicture.asset(AppImageSource.circleEmpty),
        ));
  }
}
