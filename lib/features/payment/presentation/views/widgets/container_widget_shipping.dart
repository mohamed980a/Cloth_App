import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                'Abdelfattah Elsisi',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text('Edit')
            ],
          ),
          SizedBox(height: 10),
          Text('3 Newbridge Court'),
          SizedBox(height: 5),
          Text('123 Main Street, Cairo, Egypt'),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.check_box, color: Colors.black),
              SizedBox(width: 10),
              Text('Use as the shipping address'),
            ],
          ),
        ],
      ),
    );
  }
}
