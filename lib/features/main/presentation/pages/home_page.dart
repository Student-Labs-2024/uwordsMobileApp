import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/main/bloc/audio_bloc/audio_bloc.dart';
import 'package:uwords/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AudioBloc, AudioState>(
        listener: (context, state) {
          state.whenOrNull(
              initial: () {debugPrint("Initial");},
              started: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Запись начата")));
              },
              stopped: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Запись закончена")));
              },
              failed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Произошла некоторая ошибка")));
              },
              sended: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Медиа отправлено")));
              },
              notValidLink: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Не валидная ссылка")));
              });
        },
        builder: (BuildContext context, AudioState state) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 280 / 375,
                            height: 45,
                            child: TextField(
                              controller: textEditingController,
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFE6E6E6)),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFE6E6E6)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFE6E6E6)),
                                  ),
                                  hintText: "https://yourvideo.com",
                                  hintStyle: TextStyle(
                                      color: Color(0xFFE6E6E6), fontSize: 16)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          onPressed: () {
                            context.read<AudioBloc>().add(AudioEvent.sendLink(
                                textEditingController.text));
                            textEditingController.clear();
                          },
                          icon: const Icon(
                            Icons.arrow_upward,
                            color: AppColors.whiteColor,
                          ),
                          iconSize: 24,
                          style: ButtonStyle(
                            fixedSize: WidgetStateProperty.all(Size(32, 32)),
                            backgroundColor:
                                WidgetStateProperty.all(AppColors.mainColor),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AudioBloc>().add(state.maybeWhen(
                            initial: () => const AudioEvent.startRecord(),
                            started: () => const AudioEvent.stopRecord(),
                            orElse: () => const AudioEvent.startRecord(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Color(0xFF466DF2)),
                      fixedSize: WidgetStateProperty.all(
                        Size(MediaQuery.of(context).size.width * 200 / 375,
                            MediaQuery.of(context).size.height * 200 / 812),
                      ),
                    ),
                    child: Center(
                        child: Icon(
                      state.maybeWhen(
                        started: () => Icons.pause_rounded,
                        orElse: () => Icons.play_arrow_rounded,
                      ),
                      color: Colors.white,
                      size: 150,
                    )),
                  ),
                ),
                const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
