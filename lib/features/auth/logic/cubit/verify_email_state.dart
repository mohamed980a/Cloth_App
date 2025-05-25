import 'package:equatable/equatable.dart';
import 'package:learn_chinese/features/auth/data/models/verify_email_response.dart';

abstract class VerifyEmailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class VerifyEmailInitial extends VerifyEmailState {}

class VerifyEmailLoading extends VerifyEmailState {}

class VerifyEmailSuccess extends VerifyEmailState {
  final VerifyEmailResponse response;

  VerifyEmailSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class VerifyEmailError extends VerifyEmailState {
  final String message;

  VerifyEmailError(this.message);

  @override
  List<Object?> get props => [message];
}

class ResendOtpSuccess extends VerifyEmailState {}

class ResendOtpError extends VerifyEmailState {
  final String message;

  ResendOtpError(this.message);

  @override
  List<Object?> get props => [message];
}
