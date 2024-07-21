import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/theme/app_colors.dart';

class LearnWordPage3 extends StatefulWidget {
  const LearnWordPage3(
      {super.key, required this.word, required this.goNextScreen});

  final WordModel word;
  final VoidCallback goNextScreen;

  @override
  State<LearnWordPage3> createState() => LearnWordPage3State();
}

class LearnWordPage3State extends State<LearnWordPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: LearnDecorButtStyle.wordScreenPopBackBDS,
                      child: ElevatedButton(
                        onPressed: () => context.pop(),
                        style: LearnDecorButtStyle.wordScreenPopBackBS,
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        fit: BoxFit.contain,
                        widget.word.pictureLink,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return const SizedBox(
                              width: 350,
                              height: 250,
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.mainColor,
                                ),
                              ),
                            );
                          }
                        },
                        width: 350,
                        height: 360,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: LearnDecorButtStyle.wordScreenSoundBDS,
                  child: ElevatedButton(
                    onPressed: () => context
                        .read<PlayerBloc>()
                        .add(PlayerEvent.playAudio(widget.word.audioLink)),
                    style: LearnDecorButtStyle.wordScreenSoundBS,
                    child: const Icon(
                      Icons.volume_up_outlined,
                      color: AppColors.mainColor,
                      size: 43,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: BigButton(
                    text: 'Далее',
                    onPressed: widget.goNextScreen,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
