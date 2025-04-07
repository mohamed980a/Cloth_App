import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/text_bottom_display.dart';
import 'package:flutter/material.dart';

class GridViewItem extends StatefulWidget {
  const GridViewItem({super.key});

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  List listOfSize = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
    "XXXL",
    "XXXL",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          childAspectRatio: 1, // Width to height ratio
        ),
        itemCount: listOfSize.length, // Total items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextBottomDisplay(
              title: "${listOfSize[index]}",
            ),
          );
        },
      ),
    );
  }
}
