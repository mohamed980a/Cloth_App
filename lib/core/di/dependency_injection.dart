import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:learn_chinese/core/networking/api_service.dart';
import 'package:learn_chinese/core/networking/dio_factory.dart';
import 'package:learn_chinese/features/auth/data/repo/signup_repo.dart';
import 'package:learn_chinese/features/auth/logic/cubit/login_cubit.dart';

import '../../features/auth/data/repo/login_repo.dart';
import '../../features/auth/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void>setupGetIt() async {
  // Register your services and repositories here
  // Example:
  // getit.registerLazySingleton<ApiService>(() => ApiService());
  // getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit<ApiService>()));

  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login the LoginRepo and LoginCubit
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // verify email
  // getIt.registerLazySingleton<VerifyEmailRepo>(() => VerifyEmailRepo(getIt()));
  // getIt.registerLazySingleton(() => VerifyEmailRepo(getIt<Dio>()));



}