// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';

// part 'apiServices.g.dart';

// @RestApi(baseUrl: 'https://api.tryon-store.xyz/api/v1/')
// abstract class RestClient {
//   factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

//   @POST('/users/login')
//   Future<LoginResponse> login(@Body() LoginRequest loginRequest);
// }

// @POST('/user/signup')
// Future<User> signUp(@Body() SignUpRequest request);
// @POST('/user/forgot-password')
// Future<ForgotPasswordResponse> forgotPassword(@Body() ForgotPasswordRequest request);
// @POST('/user/reset-password')
// Future<ResetPasswordResponse> resetPassword(@Body() ResetPasswordRequest request);
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';

class DioClient {
  final Dio dio = Dio();

  DioClient(BuildContext context) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final authCubit = context.read<AuthCubit>();
          final authState = authCubit.state;

          if (authState is AuthAuthenticated) {
            options.headers['Authorization'] = 'Bearer ${authState.token}';
          }

          return handler.next(options);
        },
      ),
    );
  }

  Future<Response> getProtectedData() async {
    final response = await dio.get("https://api.tryon-store.xyz/api/v1//users/login");
    return response;
  }
}
