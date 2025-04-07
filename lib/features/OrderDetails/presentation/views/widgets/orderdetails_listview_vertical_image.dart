import 'package:flutter/material.dart';
import '../../../../../core/Assets/assets_images.dart';

class OrderdetailsListviewVerticalImage extends StatelessWidget {
  const OrderdetailsListviewVerticalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 104,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.Blueshirt), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8)),
    );
    ;
  }
}
