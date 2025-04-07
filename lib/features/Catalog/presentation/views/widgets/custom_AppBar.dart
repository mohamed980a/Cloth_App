import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black, size: 24)),
      ],
    );
  }
}
