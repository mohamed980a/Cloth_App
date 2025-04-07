import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class FavListviewVerticalImage extends StatelessWidget {
  const FavListviewVerticalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      height: 113,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.Blueshirt), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
