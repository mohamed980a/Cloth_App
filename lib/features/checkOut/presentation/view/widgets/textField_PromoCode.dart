import 'package:flutter/material.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter your promo code',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(),
          suffixIcon: Container(
            decoration: BoxDecoration(
              color: const Color(0xff000000),
              borderRadius: BorderRadius.circular(90),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              color: const Color(0xffffffff),
              onPressed: () {},
              iconSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
