// import 'package:cloyhapp/core/Network/api_service.dart';
// import 'package:cloyhapp/features/Auth/data/model/signup.dart';
// import 'package:equatable/equatable.dart';
//
// abstract class CubitState extends Equatable {
//   const CubitState();
//
//   @override
//   List<Object?> get props => [];
// }
//
// class InitialState extends CubitState {}
//
// class LoadingState extends CubitState {}
//
// class LoginSuccessState extends CubitState {
//   final LoginResponse loginResponse;
//
//   const LoginSuccessState(this.loginResponse);
//
//   @override
//   List<Object?> get props => [loginResponse];
// }
//
// class ErrorState extends CubitState {
//   final String message;
//
//   const ErrorState(this.message);
//
//   @override
//   List<Object?> get props => [message];
// }
//
// /////////////////////
// class SignUpSuccessState extends CubitState {
//   final User user;
//
//   const SignUpSuccessState(this.user);
//
//   @override
//   List<Object?> get props => [user];
// }
// State class
import 'package:flutter/material.dart';

import '../features/Auth/data/model/signup.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final Signup signup;
  final String token;

  SignupSuccess(this.signup, this.token);
}

class SignupFailure extends SignupState {
  final String error;

  SignupFailure(this.error);
}
