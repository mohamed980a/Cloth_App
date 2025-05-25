import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_chinese/features/auth/data/models/login_request_body.dart';
import 'package:learn_chinese/features/auth/data/repo/login_repo.dart';
import 'package:meta/meta.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    // try {
      final response = await loginRepo.login(loginRequestBody);
      response.when(success: (loginResponse){
        emit(LoginState.success(response));
      }, error: (error){
        emit(LoginState.error(message: error.apiErrorModel.message ?? ''));
      },);

    // } catch (e) {
    //   emit(LoginState.error(message: e.toString()));
    // }
  }

}
