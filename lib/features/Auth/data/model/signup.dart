// import 'package:json_annotation/json_annotation.dart';
//
// part 'signup.g.dart';
//
// @JsonSerializable()
// class SignUpRequest {
//   final String name;
//   final String email;
//   final String password;
//   final String passwordConfirm;
//
//   SignUpRequest({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.passwordConfirm,
//   });
//
//   factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
//       _$SignUpRequestFromJson(json);
//
//   Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
// }
//
// // User Response Model
// @JsonSerializable()
// class User {
//   final String id;
//   final String name;
//   final String email;
//
//   User({required this.id, required this.name, required this.email});
//
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
//
//   Map<String, dynamic> toJson() => _$UserToJson(this);
// }

import 'package:json_annotation/json_annotation.dart';

part 'signup.g.dart';
@JsonSerializable()
class Signup {
  String? status;
  String? token;
  Data? data;

  Signup({this.status, this.token, this.data});
  factory Signup.fromJson(Map<String, dynamic> json) => _$SignupFromJson(json);

  Map<String, dynamic> toJson() => _$SignupToJson(this);

}
@JsonSerializable()
class Data {
  User? user;

  Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class User {
  String? name;
  String? email;
  List? wishlist;
  String? role;
  String? photo;
  bool? active;
  String? sId;
  List? addresses;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? password;

  User(
      {this.name,
        this.email,
        this.wishlist,
        this.role,
        this.photo,
        this.active,
        this.sId,
        this.addresses,
        this.createdAt,
        this.updatedAt,
        this.iV, this.password });
        factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

        Map<String, dynamic> toJson() => _$UserToJson(this);
}
