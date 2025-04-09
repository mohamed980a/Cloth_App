import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_listview_vertical_item.dart';
import 'package:flutter/material.dart';

class OrderdetailsListviewVertical extends StatelessWidget {
  const OrderdetailsListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return OrderdetailsListviewVerticalItem();
      },
      itemCount: 6,
    );
  }
}
