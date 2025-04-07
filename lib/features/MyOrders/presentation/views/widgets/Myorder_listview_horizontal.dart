import 'package:cloyhapp/features/MyOrders/presentation/views/widgets/Myorder_listview_horizontal_item.dart';
import 'package:flutter/material.dart';

class MyOrderListviewHorizontal extends StatelessWidget {
  const MyOrderListviewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MyorderListviewHorizontalItem();
        },
        itemCount: 3,
      ),
    );
  }
}
