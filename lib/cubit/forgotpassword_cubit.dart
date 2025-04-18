// import 'package:cloyhapp/core/Network/api_service.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dio/dio.dart';
// import '../features/Auth/data/model/forgotpassword.dart';
//
// class ForgotPasswordState {
//   final bool isLoading;
//   final String? errorMessage;
//   final String? successMessage;
//
//   ForgotPasswordState({this.isLoading = false, this.errorMessage, this.successMessage});
// }
//
// class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
//   final LoginApi apiClient;
//
//   ForgotPasswordCubit({required this.apiClient}) : super(ForgotPasswordState());
//
//   Future<void> forgotPassword(String email) async {
//     emit(ForgotPasswordState(isLoading: true));
//
//     try {
//       final response = await apiClient.forgotPassword(ForgotPasswordRequest(email: email));
//       emit(ForgotPasswordState(isLoading: false, successMessage: response.message));
//     } catch (e) {
//       emit(ForgotPasswordState(isLoading: false, errorMessage: e.toString()));
//     }
//   }
// }
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/repo/repo.dart';

class ForgotPasswordState {
  final bool isLoading;
  final String? successMessage;
  final String? errorMessage;

  ForgotPasswordState(
      {this.isLoading = false, this.successMessage, this.errorMessage});
}

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepository repository;

  ForgotPasswordCubit({required this.repository})
      : super(ForgotPasswordState());

  Future<void> forgotPassword(String email) async {
    emit(ForgotPasswordState(isLoading: true));

    try {
      final message = await repository.forgotPassword(email);
      emit(ForgotPasswordState(isLoading: false, successMessage: message));
    } catch (e) {
      emit(ForgotPasswordState(isLoading: false, errorMessage: e.toString()));
    }
  }
}
