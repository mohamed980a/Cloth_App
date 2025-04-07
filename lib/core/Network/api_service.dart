// // class ApiConstants {
// //   static const String
// //   apiBaseUrl = "https://api.tryon-store.xyz/api/v1/";
// //   static const String login = "users/login";
// //   static const String signup = "users/signup";
// // }
// //
// //   class ApiErrors {
// //
// //   static const String badRequestError = "badRequestError";
// //
// //   static const String noContent = "noContent";
// //
// //   static const String forbiddenError = "forbiddenError";
// //
// //   static const String unauthorizedError = "unauthorizedError";
// //
// //   static const String notFoundError = "notFoundError";
// //
// //   static const String conflictError = "conflictError";
// //
// //   static const String internalServerError = "internalServerError";
// //
// //   static const String unknownError = "unknownError";
// //
// //   static const String timeoutError = "timeoutError";
// //
// //   static const String defaultError = "defaultError";
// //
// //   static const String cacheError = "cacheError";
// //   static const String noInternetError = "noInternetError";
// //
// //   static const String loadingMessage = "loading_message";
// //
// //   static const String retryAgainMessage = "retry_again_message";
// //
// //   static const String ok = "Ok";
// //   }

import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/Auth/data/model/forgotpassword.dart';
import '../../features/Auth/data/model/signup.dart';

part 'api_service.g.dart'; // This will be generated

@RestApi(baseUrl: "https://api.tryon-store.xyz/api/v1/")
abstract class LoginApi {
  factory LoginApi(Dio dio, {String baseUrl}) = _LoginApi;

  @POST("users/signup")
  Future<User> signUp(@Body() Signup request);

  @POST("users/login")
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
    @Header("Authorization") String authorizationHeader,
  );
  @POST("users/forgotPassword")
  Future<ForgotPasswordResponse> forgotPassword(@Body() ForgotPasswordRequest request);

  @GET("subcategories")
  Future<SubCategoryResponse> getSubCategories();

}

class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}

class LoginResponse {
  final String token;

  LoginResponse({required this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(token: json['token']);
  }
}
