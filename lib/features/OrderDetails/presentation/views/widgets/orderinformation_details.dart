import 'package:flutter/material.dart';

class OrderinformationDetails extends StatelessWidget {
  const OrderinformationDetails(
      {super.key, required this.title, required this.subtitle, this.image});
  final String title;
  final String subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 11,
                  color: Color(0xff9B9B9B),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            if (image != null) Image.asset(image!, width: 18, height: 18),
            SizedBox(
              width: 10,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }
}
