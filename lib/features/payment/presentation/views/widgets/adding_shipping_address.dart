import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Address',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
