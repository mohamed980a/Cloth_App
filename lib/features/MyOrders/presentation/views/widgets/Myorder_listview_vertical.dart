import 'package:cloyhapp/features/MyOrders/presentation/views/widgets/MyOrder_listview_vertical_item.dart';
import 'package:flutter/material.dart';

class MyorderListviewVertical extends StatelessWidget {
  const MyorderListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return MyorderListviewVerticalItem();
      },
      itemCount: 8,
    );
  }
}
