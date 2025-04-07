import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class DeliveryMethod extends StatelessWidget {
  const DeliveryMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.facebook),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '2-3 days',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ////////
        Container(
          width: 90,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.facebook),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '2-3 days',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ///////////
        Container(
          width: 90,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.facebook),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                '2-3 days',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
