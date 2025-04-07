import 'package:cloyhapp/features/Catalog/presentation/views/widgets/gridview_vertical_image.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/prodect_screen.dart';
import 'package:flutter/material.dart';

class GridviewVerticalItem extends StatelessWidget {
  const GridviewVerticalItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 490,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Column(
        children: [
          GridviewVerticalImage(),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Row(
                  children: [
                    ...List.generate(
                      4,
                      (index) => const Icon(Icons.star_rate_rounded,
                          color: Color(0xffFFBA49), size: 20),
                    ),
                    const SizedBox(width: 3),
                    const Text("(3)",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff9B9B9B))),
                    const SizedBox(width: 19),
                    Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[100]),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProdectScreen()));
                            },
                            icon: Icon(
                              Icons.favorite_border,
                              color: Color(0xff9B9B9B),
                              size: 24,
                            ))),
                  ],
                ),
                const Text(
                  "Mango",
                  style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                ),
                const SizedBox(height: 3),
                const Text(
                  "Pullover",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 3),
                const Text(
                  "17\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
