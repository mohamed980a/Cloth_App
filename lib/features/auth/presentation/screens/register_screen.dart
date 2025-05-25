import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
import 'package:learn_chinese/core/widgets/app_text_button.dart';
import 'package:learn_chinese/features/auth/logic/cubit/signup_cubit.dart';
import 'package:learn_chinese/features/auth/logic/cubit/signup_state.dart';
import 'package:learn_chinese/features/auth/presentation/screens/verifey_otp_screen.dart';
import 'package:learn_chinese/features/auth/presentation/screens/login_screen.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/signup_widget/aleardy_have_account.dart';

import 'package:learn_chinese/features/auth/presentation/screens/widgets/signup_widget/email_and_password_signup.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/terms_and_conditions_text.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/dont_have_account.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<SignupCubit, SignupState>(
          listener: (context, state) {
            state.whenOrNull(
              signupSuccess: (data) {
                final email = data.user.email;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => VerifyEmailScreen(email: email),
                  ),
                );
              },
              signupError: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
                );
              },
            );
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(50.h),
                Image.asset(
                  'assets/images/logosplash.png',
                  fit: BoxFit.cover,
                  height: 60.h, // ✅ تم تصغيره
                ),
                verticalSpace(20.h),
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyles.font24BlueBold.copyWith(fontSize: 24.sp),
                  ),
                ),
                verticalSpace(10.h),
                Center(
                  child: Text(
                    'Enter your signup details to sign up',
                    style: TextStyles.font20Black.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 16.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EmailAndPasswordSignup(),
                      verticalSpace(30.h),
                      AppTextButton(
                        buttonText: 'Sign Up',
                        onPressed: () {
                          validateThenDoSignup(context);
                        },
                        textStyle:
                            TextStyles.font16White.copyWith(fontSize: 16.sp),
                      ),
                      verticalSpace(20.h),
                      TermsAndConditionsText(),
                      verticalSpace(30.h),
                      Center(
                        child: AleardyHaveAnAccount(
                          description: 'Already have an account?',
                          btnText: 'Login',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LoginScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
