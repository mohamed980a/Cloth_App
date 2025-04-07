import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_gridview_image.dart';
import 'package:flutter/material.dart';

class FavGridviewVerticalItem extends StatelessWidget {
  const FavGridviewVerticalItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 285,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Column(
        children: [
          FavGridviewImage(),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      4,
                      (index) => const Icon(Icons.star_rate_rounded,
                          color: Color(0xffFFBA49), size: 20),
                    ),
                    const SizedBox(width: 3),
                    const Text("(10)",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff9B9B9B))),
                    const SizedBox(width: 40),
                  ],
                ),
                Text(
                  "LIME",
                  style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                ),
                const SizedBox(height: 3),
                Text(
                  "Shirt",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Color:",
                      style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Blue",
                      style: TextStyle(fontSize: 11, color: Colors.black),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Size:",
                      style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "L",
                      style: TextStyle(fontSize: 11, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  "32\$",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
