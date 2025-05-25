import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
class Category extends StatelessWidget {
  const Category({super.key, required this.title, required this.description, required this.iconData});
  final String title;
  final String description;
  final String iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 4),
                Text(
                 description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          horizontalSpace(86),
          SvgPicture.asset(iconData),
        ],
      ),
    );
  }
}
