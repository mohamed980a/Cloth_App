// import 'package:bloc/bloc.dart';
// import 'package:cloyhapp/core/Network/api_service.dart';
//
// import 'package:cloyhapp/core/repo/repo.dart';
// import 'package:cloyhapp/cubit/cubit_state.dart';
// import 'package:cloyhapp/features/Auth/data/model/signup.dart';
//
// class CubitCubit extends Cubit<CubitState> {
//   final MyRepo myRepo;
//
//   CubitCubit(this.myRepo) : super(InitialState());
//
//   void login(String email, String password) async {
//     emit(LoadingState());
//     try {
//       final loginRequest = LoginRequest(email: email, password: password);
//       final response = await myRepo.login(loginRequest, "token");
//       emit(LoginSuccessState(response));
//     } catch (e) {
//       emit(ErrorState(e.toString()));
//     }
//   }
//
// //   void signUp(SignUpRequest request) async {
// //   emit(LoadingState());
// //   try {
// //     final user = await myRepo.signUp(request);
// //     emit(SignUpSuccessState(user));
// //   } catch (e) {
// //     emit(ErrorState(e.toString()));
// //   }
// // }
//   void signUp({
//     required String name,
//     required String email,
//     required String password,
//     required String passwordConfirm,
//   }) async {
//     emit(LoadingState());
//     try {
//       final request = User(
//         name: name,
//         email: email,
//         password: password,
//         passwordConfirm: passwordConfirm,
//       );
//       final user = await myRepo.signUp(request);
//       emit(SignUpSuccessState(user));
//     } catch (e) {
//       emit(ErrorState(e.toString()));
//     }
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:cloyhapp/core/repo/repo.dart';
import 'package:meta/meta.dart';
import '../features/Auth/data/model/signup.dart';
import 'cubit_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final MyRepo repo;

  SignupCubit(this.repo) : super(SignupInitial());

  Future<void> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(SignupLoading());

    try {
      if (password != confirmPassword) {
        emit(SignupFailure("كلمة المرور وتأكيدها غير متطابقين"));
        return;
      }

      await Future.delayed(const Duration(seconds: 2));

      final mockResponse = Signup(
        status: 'success',
        token: 'mockToken123',
        data: Data(
          user: User(
            name: name,
            email: email,
            wishlist: [],
            role: 'user',
            photo: 'https://example.com/photo.jpg',
            active: true,
            sId: '123456',
            addresses: [],
            createdAt: '2025-04-07',
            updatedAt: '2025-04-07',
            iV: 1,
            password: password,
          ),
        ),
      );

      emit(SignupSuccess(mockResponse,""));
    } catch (e) {
      emit(SignupFailure('حصل خطأ أثناء التسجيل: $e'));
    }
  }
}
