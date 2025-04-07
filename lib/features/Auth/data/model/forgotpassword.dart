import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword.g.dart';
@JsonSerializable()
class ForgotPasswordRequest {
  final String email;

  ForgotPasswordRequest({required this.email});

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);
}

@JsonSerializable()
class ForgotPasswordResponse {
  final String message;
  final String status;


  ForgotPasswordResponse(this.status, {required this.message});

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgotPasswordResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ForgotPasswordResponseToJson(this);
}