import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_chinese/core/helpers/constants.dart';
import 'package:learn_chinese/core/routing/routes.dart';
import 'package:learn_chinese/features/article/presentation/screens/article_details_screen.dart';
import 'package:learn_chinese/features/article/presentation/screens/article_screen.dart';
import 'package:learn_chinese/features/auth/logic/cubit/verify_email_cubit.dart';
import 'package:learn_chinese/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:learn_chinese/features/auth/presentation/screens/verifey_otp_screen.dart';

import 'package:learn_chinese/features/home/presentation/screens/home_screen.dart';
import 'package:learn_chinese/features/onboarding/presentation/screens/splash_screen.dart';

import '../../features/auth/logic/cubit/login_cubit.dart';
import '../../features/auth/logic/cubit/signup_cubit.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
          settings: settings,
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: RegisterScreen(),
          ),
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: ForgotPasswordScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );

      case Routes.articleScreen:
        return MaterialPageRoute(
          builder: (_) => const ArticleScreen(),
          settings: settings,
        );

      case Routes.articleDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const ArticleDetailsScreen(),
          settings: settings,
        );

      case Routes.verifyEmailScreen:
        final email = arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<VerifyEmailCubit>(),
            child: VerifyEmailScreen(email: email),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          settings: settings,
        );
    }
  }
}
