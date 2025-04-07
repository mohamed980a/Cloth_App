import 'package:flutter/material.dart';
import 'Fav_listview_horizontal_item.dart';

class FavListviewHorizontal extends StatelessWidget {
  const FavListviewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FavListviewHorizontalItem();
        },
        itemCount: 4,
      ),
    );
  }
}
