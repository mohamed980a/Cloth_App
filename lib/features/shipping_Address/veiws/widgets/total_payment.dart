import 'package:flutter/material.dart';

class TotalPayment extends StatelessWidget {
  const TotalPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Order:',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            Spacer(),
            Text(
              '\$400',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'Delivery:',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            Spacer(),
            Text(
              '\$5',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'Summery:',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
            Spacer(),
            Text(
              '\$405',
              style: TextStyle(fontSize: 25),
            )
          ],
        )
      ],
    );
  }
}
