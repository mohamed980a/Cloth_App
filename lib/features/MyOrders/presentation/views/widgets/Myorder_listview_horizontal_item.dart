import 'package:flutter/material.dart';

class MyorderListviewHorizontalItem extends StatelessWidget {
  const MyorderListviewHorizontalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 45),
      child: Container(
        height: 35,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(29)),
        child: Center(
            child: Text(
          "Delivered",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
