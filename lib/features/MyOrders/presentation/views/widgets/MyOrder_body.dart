import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Custom_AppBar.dart';
import 'package:cloyhapp/features/MyOrders/presentation/views/widgets/Myorder_listview_horizontal.dart';
import 'package:cloyhapp/features/MyOrders/presentation/views/widgets/Myorder_listview_vertical.dart';
import 'package:flutter/material.dart';

class MyorderBody extends StatelessWidget {
  const MyorderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FavCustomAppbar(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "My Orders",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                MyOrderListviewHorizontal(),
                SizedBox(
                  height: 10,
                ),
                MyorderListviewVertical()
              ],
            ),
          ),
        )
      ],
    );
  }
}
