import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/main/bloc/audio_link_bloc/audio_link_bloc.dart';
import 'package:uwords/features/main/data/repositories/interface_audio_repository.dart';
import 'package:bloc_test/bloc_test.dart';

class MockAudioRepository extends Mock implements IAudioRepository {}

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  const String correctLink = 'https://youtu.be/GspacNMHSbM?si=s04wEGADP3RdSiPs';
  const String invalidLink = 'https://youtu/GspacNMHSbM?si=s04wEGADP3RdSiPs';
  const String correctAccessToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiYWNjZXNzIiwic3ViIjoidXNlciIsInVzZXJfaWQiOjIsImVtYWlsIjoiYXJ0ZW1maWx5YWtpbjVAZ21haWwuY29tIiwiaWF0IjoxNzIxMzI1NDE0LCJleHAiOjE3MjEzMjkwMTR9.CcdAcKXXsnVGjWL3emebA3cFRivQt1NmxLD6eFPU2NwmcqDC-v1am8f7Kvqq4cy_e_HvablfhGezgmMpTAMlG1AKd_XtiWm_RuFQhafZDtMzsguHI8FFDweAzibzTnr5s6lP1D8pqSP9JAOIR-_qtq2KdpwZlSrzyo9pzLL-TcB9LGUKT3jtoUo0Jsk-cHvDHIYi8YRXEtEp9hbRMvBiSiadYayLDpfJ-z_ZqfehxzjK39J3SYNngXbgV61smtXffDA3GuK6WvDFN0c2tLp8zqBbpridWc60E8zTNE8_qmGWbBnx9YD9_M4ZVrvPTy5-NivnZymDU9WZUL9fSM_l9EqeTa7ja4IWwoZ_DmTvmtX4r5iCI2upUL6OLuC2LHr7mHS4jd1KnR4pJ8MKw0sskZQZTVCdcOR0XrfKdO0wb-m76SdFo4Y_RIzB2-7lsGYOCVNKCIKDuoEpu1SKGax5ThZOF7mjlz2NsXuWr4anL_hM64nUdfQQyamO1f9ELiEtlvqAXUEiX3SJEB-6o_wC1ZjxzUN0o7bVzUhV8lBQQt1KwFn0sYOo3bYY68zr6m1EAXGw099QBaEW-Mzv2ij577nr2pg577im4YFbVjqmir4bJ1zhCGTlnFvAYYNeqCou7of7WhH_lPcEMmBOQR3NU9iWzs5NX8FxusZwfeCKmOQ";
  const String correctRefreshToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoicmVmcmVzaCIsInN1YiI6InVzZXIiLCJ1c2VyX2lkIjoyLCJpYXQiOjE3MjEzMjU0MTQsImV4cCI6MTcyMzkxNzQxNH0.XfnfPI_s9zbaSBFi8WfLCycBNiuugntZRciDcCeG6cmBUe5ESKLZnvZ5jVFMA8FPrPW4F35Px4-Ukeg20vMTTF8cMNnFh_ElilusiblhJJr8V6hJjFuRAAGr9EO2RfpKenm9AsSw1CPElm1Icjv5IVNqkbEWAr8g4iqrOXOKWJQpnv9qAOnmptxjV_H8tz8DHNY-F7H8eOkDHRqxeOxevLQPWsa4o_-bbZaDIUcuDTRxjN0f062-J3Rcuuss-ZsV59VGq6oXifDrH6oT6q7WWRewMa-bBoWygNOmP88j-tWksxV99JAzAyWhe6jIfFK4yzOiijVmAipsabMC2mZ8nsghzFwlvh93-0dmrSXwTxIHbXsUUZlM899iy7eaLKkUK_hkeefZ88-xHNKi85V2vckqBEI-CWnq64BQXOO6rblMtqbVQQuopinNb8139AgR1uB8gMMyUBHxK-T2PB3AsCMLcBWOP2xZUhCReXFpbEk266Q1N895MVOLOlEzHBQzmjPIgJOKsCmOAGMHnl2AOwZLcvnpd_KSzVhOoNO2rn7ydPvV-5YkQvthKlVRZAPIYy1uqos4qrxNMkPII6TxKED3iY9alezUvVvfOq8Q2NOr5Lr4NGNPix_eF3EtMNC7uI8MygHyvhV6QWsj2xL-t4OyvdmnSquO1lQHfshBVmM";
  final IAudioRepository mockAudioRepository = MockAudioRepository();
  final IUserRepository mockUserRepository = MockUserRepository();
  group("AudioLinkBloc", () {
    setUpAll(() {
      registerUserRepositoryMethods(
          userRepository: mockUserRepository,
          accessToken: correctAccessToken,
          refreshAccessToken: correctRefreshToken);
    });

    blocTest<AudioLinkBloc, AudioLinkState>(
      'emits [AudioLinkStateSended] when SendLink is added with correct link',
      setUp: () {
        when(() => mockAudioRepository.sendLink(
            link: correctLink,
            accessToken: correctAccessToken)).thenAnswer((_) async {});
      },
      build: () => AudioLinkBloc(
          audioRepository: mockAudioRepository,
          userRepository: mockUserRepository),
      act: (bloc) => bloc.add(const AudioLinkEvent.sendLink(correctLink)),
      wait: const Duration(seconds: 5),
      expect: () => const <AudioLinkState>[
        AudioLinkState.sended(),
        AudioLinkState.initial()
      ],
      tearDown: () {
        reset(mockAudioRepository);
      },
    );

    blocTest<AudioLinkBloc, AudioLinkState>(
      'emits [AudioLinkStateFailed] when SendLink is added with incorrect link',
      build: () => AudioLinkBloc(
          audioRepository: mockAudioRepository,
          userRepository: mockUserRepository),
      act: (bloc) => bloc.add(const AudioLinkEvent.sendLink(invalidLink)),
      wait: const Duration(seconds: 5),
      expect: () => const <AudioLinkState>[
        AudioLinkState.failed('invalidLink'),
        AudioLinkState.initial()
      ],
    );

    blocTest<AudioLinkBloc, AudioLinkState>(
        'emits [AudioLinkStateFailed] when thrown Exception in sending link',
        setUp: () {
          when(() => mockAudioRepository.sendLink(
              link: correctLink,
              accessToken: correctAccessToken)).thenThrow(Exception());
        },
        build: () => AudioLinkBloc(
            audioRepository: mockAudioRepository,
            userRepository: mockUserRepository),
        act: (bloc) => bloc.add(const AudioLinkEvent.sendLink(correctLink)),
        expect: () => const <AudioLinkState>[
              AudioLinkState.failed('unknownError'),
            ],
        tearDown: () {
          reset(mockAudioRepository);
        });

    blocTest<AudioLinkBloc, AudioLinkState>(
        'emits [AudioLinkStateFailed] when thrown Exception',
        setUp: () {
          registerUserRepositoryMethodsWithException(
              userRepository: mockUserRepository,
              accessToken: correctAccessToken,
              refreshAccessToken: correctRefreshToken);
          when(() => mockAudioRepository.sendLink(
              link: correctLink,
              accessToken: correctAccessToken)).thenAnswer((_) async {});
        },
        build: () => AudioLinkBloc(
            audioRepository: mockAudioRepository,
            userRepository: mockUserRepository),
        act: (bloc) => bloc.add(const AudioLinkEvent.sendLink(correctLink)),
        expect: () => const <AudioLinkState>[
              AudioLinkState.failed('unknownError'),
            ],
        tearDown: () {
          reset(mockAudioRepository);
        });
  });
}

void registerUserRepositoryMethodsWithException(
    {required IUserRepository userRepository,
    required String accessToken,
    required String refreshAccessToken}) {
  when(() => userRepository.getCurrentUserAccessToken()).thenThrow(Exception());
  when(() => userRepository.refreshAccessToken()).thenThrow(Exception());
}

void registerUserRepositoryMethods(
    {required IUserRepository userRepository,
    required String accessToken,
    required String refreshAccessToken}) {
  when(() => userRepository.getCurrentUserAccessToken())
      .thenAnswer((_) => Future.value(accessToken));
  when(() => userRepository.refreshAccessToken())
      .thenAnswer((_) => Future.value(refreshAccessToken));
}
