import 'package:flutter/material.dart';

class TextOnpressed extends StatelessWidget {
  const TextOnpressed(
      {super.key, required this.text, required this.namescreen});
  final String text;
  final String namescreen;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 250),
      width: 200,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "${namescreen}");
        },
        child: Row(
          children: [
            Text(
              "$text",
              style: TextStyle(color: Colors.black),
            ),
            Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
