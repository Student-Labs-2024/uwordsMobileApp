import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/main/bloc/audio_bloc/audio_bloc.dart';
import 'package:uwords/features/main/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/main/presentation/widgets/record_button.dart';
import 'package:uwords/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool testPressed = false;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.gradientBackgroundColor1,
            AppColors.gradientBackgroundColor2
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: BlocConsumer<AudioBloc, AudioState>(
          listener: (context, state) {
            state.whenOrNull(initial: () {
              debugPrint("Initial");
            }, started: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Запись начата")));
            }, stopped: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Запись закончена")));
            }, failed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Произошла некоторая ошибка")));
            }, sended: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Медиа отправлено")));
            }, notValidLink: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Не валидная ссылка")));
            });
          },
          builder: (BuildContext context, AudioState state) {
            return SafeArea(
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/png/bubbles.png',
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 32, left: 16, right: 16),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        80 /
                                        100,
                                    height: 45,
                                    child: CustomTextField(
                                      controller: textEditingController,
                                      hintText: "Ссылка на видео",
                                      isError: false,
                                      errorMessage: 'Неверный формат',
                                    )),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      AppColors.gradientSendButtonColor1,
                                      AppColors.gradientSendButtonColor2
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(97, 120, 201, 0.26),
                                      blurRadius: 16.0,
                                      spreadRadius: 0,
                                      offset: Offset(4, 4),
                                    ),
                                    BoxShadow(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.08),
                                      blurRadius: 16.0,
                                      spreadRadius: 0,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    /*context.read<AudioBloc>().add(AudioEvent.sendLink(
                                      textEditingController.text));
                                  textEditingController.clear();*/
                                  },
                                  icon: SvgPicture.asset(
                                    state.maybeWhen(
                                      sended: () => 'assets/svg/sended_ico.svg',
                                      orElse: () => 'assets/svg/send_ico.svg',
                                    ),
                                    color: AppColors.darkMainColor,
                                    height: 24,
                                  ),
                                  iconSize: 24,
                                  style: ButtonStyle(
                                    fixedSize:
                                        WidgetStateProperty.all(Size(48, 44)),
                                    /*backgroundColor: WidgetStateProperty.all(
                                        AppColors.whiteBackgroundColor),*/
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      RecordButton(
                          isPressed:
                              testPressed /*state.maybeWhen(
                            started: () => true,
                            orElse: () => false,
                          )*/
                          ,
                          onPressed: () {
                            setState(() {
                              testPressed = !testPressed;
                            });
                            print("TESTTTTTTT");
                            /*context.read<AudioBloc>().add(state.maybeWhen(
                                  initial: () => const AudioEvent.startRecord(),
                                  started: () => const AudioEvent.stopRecord(),
                                  orElse: () => const AudioEvent.startRecord(),
                                ));*/
                          }),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
