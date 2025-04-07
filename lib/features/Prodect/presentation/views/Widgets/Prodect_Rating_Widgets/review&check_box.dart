import 'package:flutter/material.dart';

class ReviewCheckBox extends StatefulWidget {
  const ReviewCheckBox({super.key});

  @override
  State<ReviewCheckBox> createState() => _ReviewCheckBoxState();
}

bool isChecked = false;

class _ReviewCheckBoxState extends State<ReviewCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "  8  reviews ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 60,
        ),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue ?? false;
                });
              },
              activeColor: Colors.black,
              splashRadius: 30,
            ),
            Text(
              "With photo",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}
