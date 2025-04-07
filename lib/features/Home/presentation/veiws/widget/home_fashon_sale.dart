import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/core/Utils/color.dart';
import 'package:flutter/material.dart';

class FashonSale extends StatelessWidget {
  const FashonSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 1.1,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AppAssets.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 190,
          left: 60,
          child: Text(
            'Fashion ',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          left: 60,
          child: Text(
            ' Scale',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ////////////////////////////////////////////////////
        Positioned(
          bottom: 90,
          left: 60,
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: StaticColors.util_color,
            ),
            child: Center(
              child: Text(
                "Check",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
