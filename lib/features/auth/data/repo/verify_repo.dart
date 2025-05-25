import 'package:dio/dio.dart';
import 'package:learn_chinese/core/networking/api_service.dart';
import 'package:learn_chinese/core/helpers/shared_pref_helper.dart';
import 'package:learn_chinese/features/auth/data/models/verify_email_response.dart';

class VerifyRepository {
  final ApiService apiService;

  VerifyRepository({required this.apiService});

  /// Verify email using stored token and request body (e.g., email).
  Future<VerifyEmailResponse> verifyEmail({
    required Map<String, dynamic> body,
  }) async {
    try {
      final token = await SharedPrefHelper.getSecuredString('token');
      final response = await apiService.verifyEmail(body, 'Bearer $token');
      return response;
    } on DioError catch (e) {
      throw Exception(
          'Failed to verify email: ${e.response?.data ?? e.message}');
    }
  }

  /// Resend OTP using the same endpoint (or change if your API provides another one).
  Future<void> resendOtp(String email) async {
    try {
      final token = await SharedPrefHelper.getSecuredString('token');
      final body = {'email': email};

      await apiService.verifyEmail(body, 'Bearer $token');
    } on DioError catch (e) {
      throw Exception('Failed to resend OTP: ${e.response?.data ?? e.message}');
    }
  }
}
