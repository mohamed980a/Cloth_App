import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/di/dependency_injection.dart';
import 'package:learn_chinese/core/helpers/extensions.dart';
import 'package:learn_chinese/core/helpers/shared_pref_helper.dart';
import 'package:learn_chinese/core/routing/app_router.dart';
import 'package:learn_chinese/learn_app.dart';
import 'core/helpers/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  runApp(
    LearningApp(appRouter: AppRouter()),
  );
}

Future<void> checkIfLoggedInUser() async {
  final String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  isLoggedInUser = !userToken.isNullOrEmpty();
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   setupGetIt();
//   runApp(
//     ScreenUtilInit(
//       designSize: Size(375, 812),
//       builder: (context, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           home: MyCourseDetails(),
//         );
//       },
//     ),
//   );
// }
