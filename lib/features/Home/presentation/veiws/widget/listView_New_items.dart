import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class ListViewNewItems extends StatelessWidget {
  const ListViewNewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 184,
            width: 144,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(AppAssets.testImage),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.star_border, color: Colors.grey, size: 20),
              Icon(Icons.star_border, color: Colors.grey, size: 20),
              Icon(Icons.star_border, color: Colors.grey, size: 20),
              Icon(Icons.star_border, color: Colors.grey, size: 20),
              Icon(Icons.star_border, color: Colors.grey, size: 20),
              Text(
                '(0)',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          ////////////////////////////////////////////////////////////

          /////////////////////////////////////////////////////////////
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Mango Boy',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Text(
                  'Blouse',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                /////////////////////////////////////////////////////
                SizedBox(height: 3),
                Text(
                  '\$30',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
