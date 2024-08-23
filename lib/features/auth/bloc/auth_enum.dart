enum AuthError {
  unknownError,
  failedRegistration,
  failedAutorization,
  failedSignIn,
  notValidMailOrPassword,
  failedSendCode,
  codeIsNotRightOrExpired,
  noInternet,
  canceledSignIn,
}

enum AuthSuccess { authorized, sendedCode, educationNotCompleted }

enum AuthorizationProvider {
  vk,
  self,
  google,
}
