import 'package:flutter/material.dart';

class addFullName extends StatelessWidget {
  const addFullName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Text(
            'Full Name',
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
