import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirm;
  // final String? profilePicture;

  SignupRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirm,
    // required this.profilePicture,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}