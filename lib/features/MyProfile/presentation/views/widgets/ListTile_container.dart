import 'package:cloyhapp/features/MyProfile/presentation/views/widgets/listTile.dart';
import 'package:flutter/material.dart';

class ListtileContainer extends StatelessWidget {
  ListtileContainer({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$subtitle",
                    style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.black87,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xff9B9B9B),
          ),
        ],
      ),
    );
  }
}
