import 'package:flutter/material.dart';

class OrderdetailsText extends StatelessWidget {
  const OrderdetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order №1947034",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                "05-12-2019",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff9B9B9B)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Tracking number:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff9B9B9B)),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "IW3475453455",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                " Delivered",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff2AA952)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "3 items",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
