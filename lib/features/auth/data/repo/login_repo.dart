import 'package:learn_chinese/core/networking/api_error_handler.dart';
import 'package:learn_chinese/core/networking/api_result.dart';

import '../../../../core/networking/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  // This class will handle the login logic
  // It will interact with the API and return the result
  // to the LoginBloc
  // It will also handle the local storage of the user data

  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }

}