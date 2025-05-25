import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: 'msg')
  final String? message;

  final int? status;
  final String? error;

  ApiErrorModel({
    this.message,
    this.status,
    this.error,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}