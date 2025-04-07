import 'package:cloyhapp/features/settings/presentation/views/widgets/settings_body.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SettingsBody(),
    ));
  }
}
