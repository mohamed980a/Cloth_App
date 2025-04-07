import 'package:cloyhapp/cubit/cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:cloyhapp/core/app_router.dart';
import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/core/repo/repo.dart';

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

    return BlocProvider(
      create: (_) => SignupCubit(repo),
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
