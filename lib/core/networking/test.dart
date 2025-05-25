import 'package:dio/dio.dart';

Future<bool> verifyOtp(String token, String otp) async {
  final dio = Dio();
  try {
    final response = await dio.post(
      'https://learning-language.carwrgo-online.com/api/email/verify',
      options: Options(
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ),
      data: {'otp': otp},
    );

    if (response.statusCode == 200) {
      print("OTP صحيح");
      return true;
    } else {
      print("خطأ في OTP: ${response.statusCode} - ${response.data}");
      return false;
    }
  } on DioError catch (e) {
    print("Error during OTP verification: ${e.response?.data}");
    return false;
  }
}