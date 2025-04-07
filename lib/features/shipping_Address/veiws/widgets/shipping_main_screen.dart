import 'package:flutter/material.dart';

class ShippingMainScreen extends StatelessWidget {
  const ShippingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Abdelfattah Elsisi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff570091),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '123 Main Street, Cairo, Egypt',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Phone: +20 123 456 7890',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
