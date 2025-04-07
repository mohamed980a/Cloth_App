import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.center,
        ));
  }
}
