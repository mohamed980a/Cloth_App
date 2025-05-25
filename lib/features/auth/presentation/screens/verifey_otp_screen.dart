import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
import 'package:learn_chinese/core/widgets/app_text_button.dart';
import 'package:learn_chinese/features/auth/logic/cubit/verify_email_cubit.dart';
import 'package:learn_chinese/features/auth/logic/cubit/verify_email_state.dart';
import 'package:learn_chinese/features/home/presentation/screens/home_screen.dart';

class VerifyEmailScreen extends StatefulWidget {
  final String email;

  const VerifyEmailScreen({super.key, required this.email});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify Email")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocConsumer<VerifyEmailCubit, VerifyEmailState>(
          listener: (context, state) {
            if (state is VerifyEmailSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Email verified successfully")),
              );

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const HomeScreen(),
                ),
              );
            } else if (state is VerifyEmailError || state is ResendOtpError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text((state as dynamic).message)),
              );
            } else if (state is ResendOtpSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("OTP resent successfully")),
              );
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                Text("Enter the OTP sent to your email:",
                    style: TextStyles.font20Black),
                verticalSpace(10),
                TextFormField(
                  controller: _otpController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "OTP",
                    border: OutlineInputBorder(),
                  ),
                ),
                verticalSpace(30),
                AppTextButton(
                  buttonText:
                      state is VerifyEmailLoading ? 'Verifying...' : 'Verify',
                  onPressed: state is VerifyEmailLoading
                      ? null
                      : () {
                          final otp = _otpController.text.trim();
                          if (otp.isNotEmpty) {
                            context.read<VerifyEmailCubit>().verifyEmail({
                              "email": widget.email,
                              "otp": otp,
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Please enter the OTP")),
                            );
                          }
                        },
                  textStyle: TextStyles.font16White,
                ),
                verticalSpace(20),
                TextButton(
                  onPressed: () {
                    context.read<VerifyEmailCubit>().resendOtp(widget.email);
                  },
                  child: const Text("Resend Code"),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
