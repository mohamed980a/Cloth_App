import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_chinese/core/networking/api_error_handler.dart';
part 'api_result.freezed.dart';
@Freezed()
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.error(ErrorHandler message) = Error<T>;
  // const factory ApiResult.loading() = Loading<T>;
}