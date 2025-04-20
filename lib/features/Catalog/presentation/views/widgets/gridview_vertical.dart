import 'package:cloyhapp/features/Catalog/presentation/views/widgets/gridview_vertical_item.dart';
import 'package:flutter/material.dart';

class GridviewVertical extends StatelessWidget {
  const GridviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.63,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const GridviewVerticalItem();
      },
    );
  }
}
