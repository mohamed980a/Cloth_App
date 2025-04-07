import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class NewCollection extends StatelessWidget {
  const NewCollection({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.8,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Positioned(
          bottom: 50,
          left: 30,
          child: Text(
            'New Collection',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
