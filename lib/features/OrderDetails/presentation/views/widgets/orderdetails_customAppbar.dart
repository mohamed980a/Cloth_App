import 'package:flutter/material.dart';

class OrderdetailsCustomappbar extends StatelessWidget {
  const OrderdetailsCustomappbar({super.key});

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
        Text(
          "Order Details",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black, size: 24)),
      ],
    );
  }
}
