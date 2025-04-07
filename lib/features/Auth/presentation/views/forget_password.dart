import 'package:cloyhapp/features/Auth/presentation/views/widgets/Forget_widgets/forget_body.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ForgetBody(),
    );
  }
}
