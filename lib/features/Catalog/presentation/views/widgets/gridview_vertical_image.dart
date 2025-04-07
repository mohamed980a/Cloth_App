import 'package:flutter/material.dart';

import '../../../../../core/Assets/assets_images.dart';

class GridviewVerticalImage extends StatelessWidget {
  const GridviewVerticalImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 202,
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.pullover), fit: BoxFit.fill),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }
}
