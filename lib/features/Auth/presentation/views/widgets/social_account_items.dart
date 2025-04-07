import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/features/Auth/presentation/views/Widgets/social_btn.dart';
import 'package:flutter/material.dart';

class SocialAccountItems extends StatelessWidget {
  const SocialAccountItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Or sign up with social account",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialButton(asset: AppAssets.google),
            SizedBox(width: 20),
            SocialButton(asset: AppAssets.facebook),
          ],
        )
      ],
    );
  }
}
