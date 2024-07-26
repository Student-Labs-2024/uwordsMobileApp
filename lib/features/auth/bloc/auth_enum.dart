enum AuthError {
  unknownError,
  failedRegistration,
  failedAutorization,
  failedSignIn,
  notValidMailOrPassword,
  failedSendCode,
  codeIsNotRight,
  noInternet,
  canceledSignIn,
}

enum AuthSuccess {
  authorized,
  sendedCode,
}

enum AuthorizationProvider {
  vk,
  self,
  google,
}
