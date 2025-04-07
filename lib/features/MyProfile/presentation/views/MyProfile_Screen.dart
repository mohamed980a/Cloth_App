import 'package:cloyhapp/features/MyProfile/presentation/views/widgets/MyProfile_Body.dart';
import 'package:flutter/material.dart';

class MyprofileScreen extends StatelessWidget {
  const MyprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: MyprofileBody(),
    ));
  }
}
