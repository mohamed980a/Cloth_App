import 'package:cloyhapp/cubit/cubit_cubit.dart';
import 'package:cloyhapp/features/Auth/presentation/views/Widgets/social_account_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cloyhapp/cubit/cubit_state.dart';
import '../../../../../Home/presentation/main_home_screen.dart';

class LoginBodyDetails extends StatefulWidget {
  const LoginBodyDetails({super.key});

  @override
  State<LoginBodyDetails> createState() => _LoginBodyDetailsState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginBodyDetailsState extends State<LoginBodyDetails> {
  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        } else if (state is SignupSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainHomeScreen()),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 184),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "ForgetScreen");
                  },
                  child: const Text("Forgot your password?"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;

                  if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                              'يرجى إدخال البريد الإلكتروني وكلمة المرور')),
                    );
                  } else {
                    BlocProvider.of<SignupCubit>(context).signup(
                      name: "login_dummy",
                      email: email,
                      password: password,
                      confirmPassword: password,
                    );
                  }
                },
                child: state is SignupLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text('تسجيل الدخول'),
              ),
              const SizedBox(height: 30),
              const SocialAccountItems(),
            ],
          ),
        );
      },
    );
  }
}
