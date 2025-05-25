import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_chinese/features/auth/presentation/screens/widgets/login_widget/password_validation.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theaming/styles.dart';
import '../../../../../../core/widgets/app_text_form_feild.dart';
import '../../../../logic/cubit/login_cubit.dart';
class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  late TextEditingController passwordController;
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPassswordControllerListener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          Text('Email',style: TextStyles.font14Black,),
          verticalSpace(5),
          AppTextFormField(hintText: 'example@gmail.com', prefixIcon: Icon(Icons.email_outlined), validator: (value ) {
            if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
          } , 
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(20),
          Text('Password',style: TextStyles.font14Black,),
          verticalSpace(5),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: '● ● ● ● ● ●', prefixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility)) , isObscureText: isObscureText, validator: (value ) { 
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },),
          verticalSpace(25),
          PasswordValidation(
            hasUpperCase: hasUppercase,
            hasLowerCase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),

        ],
      ),
    );
  }

  void setupPassswordControllerListener() {
    passwordController.addListener((){
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
  dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
