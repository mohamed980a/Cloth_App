import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String asset;
  SocialButton({required this.asset});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black12),
        ),
        child: Image.asset(
          asset,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
