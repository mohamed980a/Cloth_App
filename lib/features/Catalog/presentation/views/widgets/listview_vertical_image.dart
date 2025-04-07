import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class ListviewVerticalImage extends StatelessWidget {
  const ListviewVerticalImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.pullover), fit: BoxFit.fill),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))),
    );
  }
}
