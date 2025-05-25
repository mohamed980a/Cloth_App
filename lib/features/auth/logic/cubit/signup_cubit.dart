import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learn_chinese/features/auth/data/models/signup_request_body.dart';
import 'package:learn_chinese/features/auth/data/repo/signup_repo.dart';
import 'package:learn_chinese/features/auth/logic/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());

    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirm: passwordConfirmationController.text,
      ),
    );

    response.when(
      success: (signupResponse) {
        emit(SignupState.signupSuccess(signupResponse));
      },
      error: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
