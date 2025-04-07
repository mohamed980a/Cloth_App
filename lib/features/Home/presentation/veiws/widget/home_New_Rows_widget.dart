import 'package:flutter/material.dart';

class RowsNewWidgets extends StatelessWidget {
  const RowsNewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'You’ve never seen it before!',
            style: TextStyle(fontSize: 18, color: Color(0xff9B9B9B)),
          ),
        ),
      ],
    );
  }
}
