import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Payment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                'Change',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff570091),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.facebook),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              '*** *** *** 897',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
