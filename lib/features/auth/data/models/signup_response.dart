
import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  String? message;
  User? user;
  String? token;

  SignupResponse({this.message, this.user, this.token});

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class User {
  String? name;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;


  User({this.id, this.name, this.email, this.createdAt, this.updatedAt});

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}