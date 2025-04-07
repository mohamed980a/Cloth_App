import 'package:flutter/material.dart';

class AddCode extends StatelessWidget {
  const AddCode({super.key});

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
            'Zip Code (Postal Code)',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
