import 'package:flutter/material.dart';

import '../../../../../../core/Utils/color.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      margin: EdgeInsets.only(left: 200, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: StaticColors.util_color,
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: Color(0xffffffff),
            ),
            Text(
              " Write a review",
              style: TextStyle(fontSize: 20, color: Color(0xffffffff)),
            )
          ],
        ),
      ),
    );
  }
}
