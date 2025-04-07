import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Custom_AppBar.dart';
import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_Text.dart';
import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_customAppbar.dart';
import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_listview_vertical.dart';
import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderinformation_listview.dart';
import 'package:flutter/material.dart';

class OrderdetailsBody extends StatelessWidget {
  const OrderdetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderdetailsCustomappbar(),
                SizedBox(
                  height: 25,
                ),
                OrderdetailsText(),
                SizedBox(
                  height: 15,
                ),
                OrderdetailsListviewVertical(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Order information",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                OrderinformationListview()
              ],
            ),
          ),
        )
      ],
    );
  }
}
