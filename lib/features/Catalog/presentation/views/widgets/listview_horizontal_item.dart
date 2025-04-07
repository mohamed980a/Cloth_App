import 'package:flutter/material.dart';

class ListviewHorizontalItem extends StatelessWidget {
  const ListviewHorizontalItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7),
      child: Container(
        height: 35,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(29)),
        child: Center(
            child: Text(
          "T_shirt",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
