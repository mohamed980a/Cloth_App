import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloyhapp/cubit/cubit_cubit.dart';
import 'package:cloyhapp/cubit/cubit_state.dart';
import 'package:cloyhapp/features/Auth/presentation/views/Widgets/social_account_items.dart';

class RegisterBody extends StatefulWidget {
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _validateForm(BuildContext context) {
    if (_nameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('يرجى ملء جميع الحقول')),
      );
      return false;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('كلمتا السر غير متطابقتين')),
      );
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'تم التسجيل بنجاح، مرحباً ${state.signup.data?.user?.name ?? ''}'),
            ),
          );
          Navigator.pushReplacementNamed(context, 'LoginScreen');
        } else if (state is SignupFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text("Sign Up",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: "Name", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: state is SignupLoading
                      ? null
                      : () {
                          if (_validateForm(context)) {
                            BlocProvider.of<SignupCubit>(context).signup(
                              name: _nameController.text,
                              email: _emailController.text,
                              password: _passwordController.text,
                              confirmPassword: _confirmPasswordController.text,
                            );
                          }
                        },
                  child: state is SignupLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("التسجيل"),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, "LoginScreen"),
                  child: const Text("Already have an account?"),
                ),
                const SizedBox(height: 30),
                const SocialAccountItems()
              ],
            ),
          ),
        );
      },
    );
  }
}
