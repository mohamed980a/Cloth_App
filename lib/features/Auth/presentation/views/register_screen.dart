import 'package:flutter/material.dart';

import 'Widgets/Register_widgets/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RegisterBody(),
    );
  }
}
