class ApiConstants {
  static const String apiBaseUrl =
      'https://learning-language.carwrgo-online.com/api/';
  static const String loginEndpoint = 'login';
  static const String registerEndpoint = 'register';
  static const String forgotPasswordEndpoint = 'users/forgotPassword';
  static const String resetPasswordEndpoint = 'send/otp/reset/password';
  static const String changePasswordEndpoint = 'change/password';
  static const String verifyEmailEndpoint = 'email/verify';
  static const String logoutEndpoint = 'logout';
  static const String sendResetPasswordOtpEndpoint = "/send/otp/reset/password";
  static const String verifyOtpResetPasswordEndpoint =
      "/verify/otp/reset/password";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
