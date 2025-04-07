import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryItemListview extends StatelessWidget {
  const CategoryItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => CategoryItem(
              text: 'Kids',
            ));
  }
}
