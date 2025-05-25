import 'package:dio/dio.dart';

import 'api_constant.dart';
import 'api_error_model.dart';

enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTORISED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int API_LOGIC_ERROR = 422;

  // Local status codes
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String NO_CONTENT = ApiErrors.noContent;
  static const String BAD_REQUEST = ApiErrors.badRequestError;
  static const String UNAUTORISED = ApiErrors.unauthorizedError;
  static const String FORBIDDEN = ApiErrors.forbiddenError;
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError;
  static const String NOT_FOUND = ApiErrors.notFoundError;

  static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static String CANCEL = ApiErrors.defaultError;
  static String RECIEVE_TIMEOUT = ApiErrors.timeoutError;
  static String SEND_TIMEOUT = ApiErrors.timeoutError;
  static String CACHE_ERROR = ApiErrors.cacheError;
  static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
            status: ResponseCode.NO_CONTENT,
            message: ResponseMessage.NO_CONTENT);
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
            status: ResponseCode.BAD_REQUEST,
            message: ResponseMessage.BAD_REQUEST);
      case DataSource.FORBIDDEN:
        return ApiErrorModel(
            status: ResponseCode.FORBIDDEN, message: ResponseMessage.FORBIDDEN);
      case DataSource.UNAUTORISED:
        return ApiErrorModel(
            status: ResponseCode.UNAUTORISED,
            message: ResponseMessage.UNAUTORISED);
      case DataSource.NOT_FOUND:
        return ApiErrorModel(
            status: ResponseCode.NOT_FOUND, message: ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
            status: ResponseCode.INTERNAL_SERVER_ERROR,
            message: ResponseMessage.INTERNAL_SERVER_ERROR);
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
            status: ResponseCode.CONNECT_TIMEOUT,
            message: ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return ApiErrorModel(
            status: ResponseCode.CANCEL, message: ResponseMessage.CANCEL);
      case DataSource.RECIEVE_TIMEOUT:
        return ApiErrorModel(
            status: ResponseCode.RECIEVE_TIMEOUT,
            message: ResponseMessage.RECIEVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
            status: ResponseCode.SEND_TIMEOUT,
            message: ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
            status: ResponseCode.CACHE_ERROR,
            message: ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
            status: ResponseCode.NO_INTERNET_CONNECTION,
            message: ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return ApiErrorModel(
            status: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  try {
    final response = error.response;
    final data = response?.data;

    if (data is Map<String, dynamic>) {
      final message = data['message'] ??
          data['error'] ??
          data['detail'] ??
          'Unexpected error';
      final status = response?.statusCode ?? ResponseCode.DEFAULT;
      return ApiErrorModel(status: status, message: message);
    } else if (data is String) {
      final status = response?.statusCode ?? ResponseCode.DEFAULT;
      return ApiErrorModel(status: status, message: data);
    } else {
      return DataSource.DEFAULT.getFailure();
    }
  } catch (_) {
    return DataSource.DEFAULT.getFailure();
  }
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
