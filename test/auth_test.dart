import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

import 'firebase_mock.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  final DateTime birthDate = DateTime.now();
  const String correctAccessToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoiYWNjZXNzIiwic3ViIjoidXNlciIsInVzZXJfaWQiOjIsImVtYWlsIjoiYXJ0ZW1maWx5YWtpbjVAZ21haWwuY29tIiwiaWF0IjoxNzIxMzI1NDE0LCJleHAiOjE3MjEzMjkwMTR9.CcdAcKXXsnVGjWL3emebA3cFRivQt1NmxLD6eFPU2NwmcqDC-v1am8f7Kvqq4cy_e_HvablfhGezgmMpTAMlG1AKd_XtiWm_RuFQhafZDtMzsguHI8FFDweAzibzTnr5s6lP1D8pqSP9JAOIR-_qtq2KdpwZlSrzyo9pzLL-TcB9LGUKT3jtoUo0Jsk-cHvDHIYi8YRXEtEp9hbRMvBiSiadYayLDpfJ-z_ZqfehxzjK39J3SYNngXbgV61smtXffDA3GuK6WvDFN0c2tLp8zqBbpridWc60E8zTNE8_qmGWbBnx9YD9_M4ZVrvPTy5-NivnZymDU9WZUL9fSM_l9EqeTa7ja4IWwoZ_DmTvmtX4r5iCI2upUL6OLuC2LHr7mHS4jd1KnR4pJ8MKw0sskZQZTVCdcOR0XrfKdO0wb-m76SdFo4Y_RIzB2-7lsGYOCVNKCIKDuoEpu1SKGax5ThZOF7mjlz2NsXuWr4anL_hM64nUdfQQyamO1f9ELiEtlvqAXUEiX3SJEB-6o_wC1ZjxzUN0o7bVzUhV8lBQQt1KwFn0sYOo3bYY68zr6m1EAXGw099QBaEW-Mzv2ij577nr2pg577im4YFbVjqmir4bJ1zhCGTlnFvAYYNeqCou7of7WhH_lPcEMmBOQR3NU9iWzs5NX8FxusZwfeCKmOQ";
  const String correctRefreshToken =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0eXBlIjoicmVmcmVzaCIsInN1YiI6InVzZXIiLCJ1c2VyX2lkIjoyLCJpYXQiOjE3MjEzMjU0MTQsImV4cCI6MTcyMzkxNzQxNH0.XfnfPI_s9zbaSBFi8WfLCycBNiuugntZRciDcCeG6cmBUe5ESKLZnvZ5jVFMA8FPrPW4F35Px4-Ukeg20vMTTF8cMNnFh_ElilusiblhJJr8V6hJjFuRAAGr9EO2RfpKenm9AsSw1CPElm1Icjv5IVNqkbEWAr8g4iqrOXOKWJQpnv9qAOnmptxjV_H8tz8DHNY-F7H8eOkDHRqxeOxevLQPWsa4o_-bbZaDIUcuDTRxjN0f062-J3Rcuuss-ZsV59VGq6oXifDrH6oT6q7WWRewMa-bBoWygNOmP88j-tWksxV99JAzAyWhe6jIfFK4yzOiijVmAipsabMC2mZ8nsghzFwlvh93-0dmrSXwTxIHbXsUUZlM899iy7eaLKkUK_hkeefZ88-xHNKi85V2vckqBEI-CWnq64BQXOO6rblMtqbVQQuopinNb8139AgR1uB8gMMyUBHxK-T2PB3AsCMLcBWOP2xZUhCReXFpbEk266Q1N895MVOLOlEzHBQzmjPIgJOKsCmOAGMHnl2AOwZLcvnpd_KSzVhOoNO2rn7ydPvV-5YkQvthKlVRZAPIYy1uqos4qrxNMkPII6TxKED3iY9alezUvVvfOq8Q2NOr5Lr4NGNPix_eF3EtMNC7uI8MygHyvhV6QWsj2xL-t4OyvdmnSquO1lQHfshBVmM";
  final IUserRepository mockUserRepository = MockUserRepository();
  const String correctEmailAddress = "artem_filyakin5@mail.ru";
  const String correctPassword = ")A1111paOPoq";
  const String correctUsername = "Naillooon";
  const String correctCode = "kdq7K1";

  setupFirebaseAuthMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  group("AuthBloc", () {
    setUpAll(() {
      registerUserRepositoryMethods(
        userRepository: mockUserRepository,
        accessToken: correctAccessToken,
        refreshAccessToken: correctRefreshToken,
      );
    });

    blocTest<AuthBloc, AuthState>(
      'emits [AuthSuccess] when RequestCode is added with correct data',
      setUp: () {
        when(() => mockUserRepository.requestCode(email: correctEmailAddress))
            .thenAnswer((_) async {});
      },
      build: () => AuthBloc(userRepository: mockUserRepository),
      act: (bloc) => bloc.add(AuthEvent.requestCode(
          birthDate: birthDate,
          emailAddress: correctEmailAddress,
          password: correctPassword,
          nickname: correctUsername)),
      expect: () => const <AuthState>[
        AuthState.waitingAnswer(),
        AuthState.success(AuthSuccess.sendedCode)
      ],
      tearDown: () {
        reset(mockUserRepository);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthFailed] when RequestCode throw exception',
      setUp: () {
        when(() => mockUserRepository.requestCode(email: correctEmailAddress))
            .thenThrow(Exception());
      },
      build: () => AuthBloc(userRepository: mockUserRepository),
      act: (bloc) => bloc.add(AuthEvent.requestCode(
          birthDate: birthDate,
          emailAddress: correctEmailAddress,
          password: correctPassword,
          nickname: correctUsername)),
      expect: () => const <AuthState>[
        AuthState.waitingAnswer(),
        AuthState.failed(AuthError.failedSendCode)
      ],
      tearDown: () {
        reset(mockUserRepository);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthSuccess.authorized] when RegisterUser and Insert Code with correct data',
      setUp: () {
        when(() => mockUserRepository.requestCode(email: correctEmailAddress))
            .thenAnswer((_) async {});
        when(() => mockUserRepository.checkCode(
            email: correctEmailAddress,
            code: correctCode)).thenAnswer((_) => Future<bool>.value(true));
        when(() => mockUserRepository.registerUser(
            emailAddress: correctEmailAddress,
            password: correctPassword,
            username: correctUsername,
            birthDate: birthDate,
            code: correctCode)).thenAnswer((_) => Future<bool>.value(true));
        when(() => mockUserRepository.authorizate(
            emailAddress: correctEmailAddress,
            password: correctPassword)).thenAnswer((_) async {});
      },
      build: () => AuthBloc(userRepository: mockUserRepository),
      act: (bloc) {
        bloc.add(AuthEvent.requestCode(
            birthDate: birthDate,
            emailAddress: correctEmailAddress,
            password: correctPassword,
            nickname: correctUsername));
        bloc.add(const AuthEvent.registerUser(code: correctCode));
      },
      expect: () => const <AuthState>[
        AuthState.waitingAnswer(),
        AuthState.success(AuthSuccess.sendedCode),
        AuthState.waitingAnswer(),
        AuthState.success(AuthSuccess.authorized),
      ],
      tearDown: () {
        reset(mockUserRepository);
      },
    );
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
