import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubit/forgotpassword_cubit.dart';

class ForgetBody extends StatelessWidget {
  ForgetBody({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          if (state.successMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.successMessage!)),
            );
          }
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage!)),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                    child: Text(
                  "Forget password",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Please, enter your email address. You will receive a link to create a new password via email.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      /* this text to check a email correct or error */
                      Text(
                        "Not a valid email address. Should be your@email.com",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffff0000)),
                      )
                    ],
                  ),
                ),
                if (state.isLoading)
                  CircularProgressIndicator()
                else
                  ElevatedButton(
                    onPressed: () {
                      final email = emailController.text;
                      if (email.isNotEmpty) {
                        context
                            .read<ForgotPasswordCubit>()
                            .forgotPassword(email);
                      }
                    },
                    child: Text('Send Reset Link'),
                  ),
                // btnMain(
                //     onPressed: () {
                //       Navigator.pushNamed(context, 'HomeScreen');
                //     },
                //     text: "SEND"),
              ],
            ),
          );
        },
      ),
    );
  }
}
