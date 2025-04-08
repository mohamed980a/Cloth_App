import 'package:cloyhapp/cubit/cubit_cubit.dart';
import 'package:cloyhapp/cubit/cubit_state.dart';
import 'package:cloyhapp/cubit/forgotpassword_cubit.dart';
import 'package:cloyhapp/cubit/sub_categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:cloyhapp/core/app_router.dart';
import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/core/repo/repo.dart';

import 'cubit/auth_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    final apiService = LoginApi(dio);
    final repo = MyRepo(apiService);
    final repos = ForgotPasswordRepository(apiClient: apiService);
    final subCategoriesRepo = SubCategoriesRepository(api: apiService);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
        create: (_) => AuthCubit()),
        BlocProvider<ForgotPasswordCubit>(
          create: (_) => ForgotPasswordCubit(repository: repos),
        ),
        BlocProvider<SignupCubit>(
          create: (_) => SignupCubit(repo),
        ),
        BlocProvider<SubCategoriesCubit>(
          create: (_) =>
              SubCategoriesCubit(subCategoriesRepo)..getSubCategories(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
