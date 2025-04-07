import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_listview_vertical_image.dart';
import 'package:flutter/material.dart';

class FavListviewVerticalContainer extends StatelessWidget {
  const FavListviewVerticalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 390,
            height: 116,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
              ],
            ),
            child: Row(
              children: [
                FavListviewVerticalImage(),
                Padding(
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "LIME",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B)),
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                        Text(
                          "Shirt",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Color:",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Blue",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Size:",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "L",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "32\$",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            ...List.generate(
                              4,
                              (index) => const Icon(Icons.star_rate_rounded,
                                  color: Color(0xffFFBA49), size: 15),
                            ),
                            const Text("(3)",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff9B9B9B))),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 85, left: 350),
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[900],
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 22,
                )),
          ),
        ],
      ),
    );
  }
}
