import 'package:flutter/material.dart';

import '../../../../../../core/Assets/assets_images.dart';

class ListImageComments extends StatelessWidget {
  const ListImageComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(AppAssets.pullover), fit: BoxFit.fill),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(AppAssets.pullover), fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
