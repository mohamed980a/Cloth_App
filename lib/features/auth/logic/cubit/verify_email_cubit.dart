import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_chinese/features/auth/data/repo/verify_repo.dart';
import 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  final VerifyRepository repository;

  VerifyEmailCubit(this.repository) : super(VerifyEmailInitial());

  Future<void> verifyEmail(Map<String, dynamic> body) async {
    emit(VerifyEmailLoading());
    try {
      final response = await repository.verifyEmail(body: body);
      emit(VerifyEmailSuccess(response));
    } catch (e) {
      emit(VerifyEmailError(e.toString()));
    }
  }

  Future<void> resendOtp(String email) async {
    try {
      await repository.resendOtp(email);
      emit(ResendOtpSuccess());
    } catch (e) {
      emit(ResendOtpError(e.toString()));
    }
  }
}
