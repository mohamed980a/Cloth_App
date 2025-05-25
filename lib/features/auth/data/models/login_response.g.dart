// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'token': instance.token,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
    };
