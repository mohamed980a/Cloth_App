import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_chinese/core/helpers/extensions.dart';
import 'package:learn_chinese/features/auth/logic/cubit/login_cubit.dart';
import 'package:learn_chinese/features/auth/logic/cubit/login_state.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theaming/styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Loading || current is Success || current is Error,

      listener: (context, state) {
        // TODO: implement listener}
        state.whenOrNull(
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(child: CircularProgressIndicator()),
            );
          },
          success: (response) {
            // Hide loading indicator
            context.pop();
            context.pushNamed(Routes.homeScreen);
            // Navigate to home screen or perform any other action
          },
          error: (message) {
            // Hide loading indicator
            context.pop();
            // Show error message
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  message,
                  style: TextStyles.font14Black,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Got it',
                      style: TextStyles.font14BlueBold.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            );

          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
