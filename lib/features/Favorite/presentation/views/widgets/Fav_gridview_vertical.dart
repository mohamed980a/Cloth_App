import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_gridview_vertical_item.dart';
import 'package:flutter/material.dart';

class FavGridviewVertical extends StatelessWidget {
  const FavGridviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.61,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const FavGridviewVerticalItem();
      },
    );
  }
}
