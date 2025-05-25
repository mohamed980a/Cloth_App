import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/routing/app_router.dart';
import 'package:learn_chinese/core/routing/routes.dart';
import 'package:learn_chinese/core/theaming/colors.dart';
import 'package:learn_chinese/core/helpers/constants.dart';

class LearningApp extends StatelessWidget {
  final AppRouter appRouter;

  const LearningApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Chinese App',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
      ),
    );
  }
}
