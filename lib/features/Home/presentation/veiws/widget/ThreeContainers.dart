import 'package:flutter/material.dart';
import 'package:cloyhapp/core/Assets/assets_images.dart';

class ThreeContainers extends StatelessWidget {
  const ThreeContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(AppAssets.testImage),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(AppAssets.testImage),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(AppAssets.testImage),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
