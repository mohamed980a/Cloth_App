import 'package:flutter/material.dart';

class AddCountry extends StatelessWidget {
  const AddCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Country',
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
              Icon(Icons.arrow_drop_down)
            ],
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
