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

// GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'api_service.dart';

// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************

// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

// class _LoginApi implements LoginApi {
//   _LoginApi(
//     this._dio, {
//     this.baseUrl,
//     this.errorLogger,
//   }) {
//     baseUrl ??= 'https://api.tryon-store.xyz/api/v1/';
//   }

//   final Dio _dio;

//   String? baseUrl;

//   final ParseErrorLogger? errorLogger;

//   @override
//   Future<User> signUp(Signup request) async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(request.toJson());
//     final _options = _setStreamType<User>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//           _dio.options,
//           'users/signup',
//           queryParameters: queryParameters,
//           data: _data,
//         )
//         .copyWith(
//             baseUrl: _combineBaseUrls(
//           _dio.options.baseUrl,
//           baseUrl,
//         )));
//     final _result = await _dio.fetch<Map<String, dynamic>>(_options);
//     late User _value;
//     try {
//       _value = User.fromJson(_result.data!);
//     } on Object catch (e, s) {
//       errorLogger?.logError(e, s, _options);
//       rethrow;
//     }
//     return _value;
//   }

//   @override
//   Future<LoginResponse> login(
//     LoginRequest loginRequest,
//     String authorizationHeader,
//   ) async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{r'Authorization': authorizationHeader};
//     _headers.removeWhere((k, v) => v == null);
//     final _data = <String, dynamic>{};
//     _data.addAll(loginRequest.toJson());
//     final _options = _setStreamType<LoginResponse>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//           _dio.options,
//           'users/login',
//           queryParameters: queryParameters,
//           data: _data,
//         )
//         .copyWith(
//             baseUrl: _combineBaseUrls(
//           _dio.options.baseUrl,
//           baseUrl,
//         )));
//     final _result = await _dio.fetch<Map<String, dynamic>>(_options);
//     late LoginResponse _value;
//     try {
//       _value = LoginResponse.fromJson(_result.data!);
//     } on Object catch (e, s) {
//       errorLogger?.logError(e, s, _options);
//       rethrow;
//     }
//     return _value;
//   }

//   @override
//   Future<ForgotPasswordResponse> forgotPassword(
//       ForgotPasswordRequest request) async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     _data.addAll(request.toJson());
//     final _options = _setStreamType<ForgotPasswordResponse>(Options(
//       method: 'POST',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//           _dio.options,
//           'users/forgotPassword',
//           queryParameters: queryParameters,
//           data: _data,
//         )
//         .copyWith(
//             baseUrl: _combineBaseUrls(
//           _dio.options.baseUrl,
//           baseUrl,
//         )));
//     final _result = await _dio.fetch<Map<String, dynamic>>(_options);
//     late ForgotPasswordResponse _value;
//     try {
//       _value = ForgotPasswordResponse.fromJson(_result.data!);
//     } on Object catch (e, s) {
//       errorLogger?.logError(e, s, _options);
//       rethrow;
//     }
//     return _value;
//   }

//   @override
//   Future<SubCategoryResponse> getSubCategories() async {
//     final _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     const Map<String, dynamic>? _data = null;
//     final _options = _setStreamType<SubCategoryResponse>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//         .compose(
//           _dio.options,
//           'subcategories',
//           queryParameters: queryParameters,
//           data: _data,
//         )
//         .copyWith(
//             baseUrl: _combineBaseUrls(
//           _dio.options.baseUrl,
//           baseUrl,
//         )));
//     final _result = await _dio.fetch<Map<String, dynamic>>(_options);
//     late SubCategoryResponse _value;
//     try {
//       _value = SubCategoryResponse.fromJson(_result.data!);
//     } on Object catch (e, s) {
//       errorLogger?.logError(e, s, _options);
//       rethrow;
//     }
//     return _value;
//   }

//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }

//   String _combineBaseUrls(
//     String dioBaseUrl,
//     String? baseUrl,
//   ) {
//     if (baseUrl == null || baseUrl.trim().isEmpty) {
//       return dioBaseUrl;
//     }

//     final url = Uri.parse(baseUrl);

//     if (url.isAbsolute) {
//       return url.toString();
//     }

//     return Uri.parse(dioBaseUrl).resolveUri(url).toString();
//   }
// }
