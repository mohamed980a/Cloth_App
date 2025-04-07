import 'package:flutter/material.dart';
import '../../../../../core/Assets/assets_images.dart';

class FavGridviewImage extends StatelessWidget {
  const FavGridviewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      Container(
        width: 190,
        height: 184,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.Blueshirt), fit: BoxFit.fill),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 20,
          )),
      Padding(
        padding: EdgeInsets.only(top: 170, right: 10),
        child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple[900],
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 18,
            )),
      ),
    ]);
  }
}
