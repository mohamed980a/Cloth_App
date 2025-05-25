import 'package:dio/dio.dart';
import 'package:learn_chinese/features/auth/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/data/models/login_request_body.dart';
import '../../features/auth/data/models/signup_request_body.dart';
import '../../features/auth/data/models/signup_response.dart';
import '../../features/auth/data/models/verify_email_response.dart';
import '../helpers/constants.dart';
import 'api_constant.dart';
import 'api_result.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.registerEndpoint)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);

  // @POST(ApiConstants.verifyEmailEndpoint)
  // Future<VerifyEmailResponse> verifyEmail(
  //     @Body() Map<String, dynamic> body,
  //     @Header("Authorization") String token,
  //
  //     );

  // @POST(ApiConstants.verifyEmailEndpoint)
  // Future<VerifyEmailResponse> verifyEmail(
  //     @Header("Authorization") userToken,
  //     @Body() Map<String, dynamic> body,
  //     );
  @POST(ApiConstants.verifyEmailEndpoint)
  Future<VerifyEmailResponse> verifyEmail(
    @Body() Map<String, dynamic> body,
    @Header("Authorization") String token,
  );
  /////////////////////
  // @POST(ApiConstants.sendResetPasswordOtpEndpoint)
  // Future<void> sendResetPasswordOtp(
  //   @Body() Map<String, dynamic> body,
  //   @Header("Authorization") String token,
  // );
//   ////////////////
//   @POST(ApiConstants.verifyOtpResetPasswordEndpoint)
//   Future<void> verifyOtpResetPassword(
//     @Body() Map<String, dynamic> body,
//     @Header("Authorization") String token,
//   );
// /////////////////////
//   @POST(ApiConstants.resetPasswordEndpoint)
//   Future<void> resetPassword(
//     @Body() Map<String, dynamic> body,
//     @Header("Authorization") String token,
//   );
}
