import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class WordRow extends StatefulWidget {
  const WordRow({super.key, required this.wordInfo});
  final WordInfo wordInfo;

  @override
  State<WordRow> createState() => _WordRowState();
}

class _WordRowState extends State<WordRow> {
  bool _isDismissed = false;
  bool _isDeleted = false;

  void onSwipe() async {
    setState(() {
      _isDismissed = true;
    });
    await Future.delayed(const Duration(milliseconds: 800));
    setState(() {
      _isDeleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 100),
      child: _isDismissed
          ? AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              child: _isDeleted
                  ? const SizedBox()
                  : Container(
                      decoration: BoxDecoration(
                        gradient: AppColors.deleteWordRow,
                        borderRadius: BorderRadius.circular(
                            GlobalSizes.borderRadiusMedium),
                      ),
                      key: ValueKey('red_container_${widget.wordInfo}'),
                      height: LearnSizes.wordRowMinHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Слово было удалено',
                            style: AppTextStyles.animatedWordRow,
                          ),
                          IconButton(
                            icon: const Icon(Icons.check, color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
            )
          : Dismissible(
              key: ValueKey('word_row_${widget.wordInfo}'),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                onSwipe();
              },
              background: Container(
                decoration: BoxDecoration(
                  gradient: AppColors.deleteWordRow,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              child: ListTile(
                minTileHeight: LearnSizes.wordRowMinHeight,
                leading: InkWell(
                  onTap: () {
                    context.read<PlayerBloc>().add(
                        PlayerEvent.playAudio(widget.wordInfo.word.audioLink));
                  },
                  child: SizedBox(
                    width: LearnSizes.wordRowIconWidth,
                    height: LearnSizes.wordRowIconHeight,
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
                title: Text(widget.wordInfo.word.enValue),
                subtitle: Text(widget.wordInfo.word.ruValue),
                trailing: widget.wordInfo.progress >
                        OtherLearnConstants.thirdQuarterProgress
                    ? Image.asset(AppImageSource.circleFull)
                    : widget.wordInfo.progress >
                            OtherLearnConstants.halfProgress
                        ? Image.asset(AppImageSource.circleThirdQuarter)
                        : widget.wordInfo.progress >
                                OtherLearnConstants.quarterProgress
                            ? Image.asset(AppImageSource.circleSecondQuarter)
                            : widget.wordInfo.progress >
                                    OtherLearnConstants.zeroProgress
                                ? Image.asset(AppImageSource.circleFirstQuarter)
                                : Image.asset(AppImageSource.circleEmpty),
              ),
            ),
    );
  }
}
