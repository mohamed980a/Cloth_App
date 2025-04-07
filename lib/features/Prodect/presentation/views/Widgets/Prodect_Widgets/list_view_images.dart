import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class ListViewImages extends StatelessWidget {
  const ListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            height: 350,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(AppAssets.pullover), fit: BoxFit.fill),
            ),
          );
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
