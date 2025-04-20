import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_vertical_item.dart';
import 'package:flutter/material.dart';

class ListviewVertical extends StatelessWidget {
  const ListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ListviewVerticalItem();
      },
      itemCount: 8,
    );
  }
}
