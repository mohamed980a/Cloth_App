import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  Data? data;
  String? token;

  LoginResponse({this.data, this.token});

 factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

}
@JsonSerializable()
class Data {
  @JsonKey(name: '_id')
  String? sId;
  String? name;
  String? email;
  String? profilePicture;

  Data({this.sId, this.name, this.email, this.profilePicture});

 factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}