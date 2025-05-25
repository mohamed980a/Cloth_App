import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_chinese/core/helpers/extensions.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
import 'package:learn_chinese/core/widgets/app_text_form_feild.dart';
import 'package:learn_chinese/features/auth/data/models/login_request_body.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/dont_have_account.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/email_and_password.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/login_bloc_listener.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/terms_and_conditions_text.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 90.h,),
                verticalSpace(50),
                Image.asset('assets/images/logosplash.png',fit: BoxFit.cover,),
                // SizedBox(height: 40,),
                verticalSpace(20),
                Center(
                  child: Text(
                    'Sign In',
                    style:TextStyles.font24BlueBold ),
                ),
                // SizedBox(height: 10.h,),
                verticalSpace(10),
                Center(
                  child: Text(
                    'Enter your login details to sign in',
                    style:TextStyles.font20Black.copyWith(fontWeight: FontWeight.w300,fontSize: 16.sp)),
                ),
                verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EmailAndPassword(),

                      verticalSpace(25),
                      Align(alignment: AlignmentDirectional.centerStart,child: TextButton( onPressed: () { 
                        context.pushNamed(Routes.forgotPasswordScreen);
                      },
                      child: Text("Forgot Password?",style: TextStyles.font14Black,))),
                      verticalSpace(30),
                      AppTextButton(
                        buttonText: 'Sign In',
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                       textStyle: TextStyles.font16White,


                      ),

                      verticalSpace(20),
                      TermsAndConditionsText(),
                      verticalSpace(30),
                      Center(child: GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.registerScreen);
                        },
                          child: AleardyHaveAccount(description: 'Don\'t have an account yet? ', btnText: 'Sign Up',))),
                      const LoginBlocListener(),
                    ],
                  ),
                )

              ],
            ),
          )
        )
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      // Perform login action
      context.read<LoginCubit>().login(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
      ));
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields correctly')),
      );
    }
  }
}

  final TextEditingController emailController = TextEditingController();
