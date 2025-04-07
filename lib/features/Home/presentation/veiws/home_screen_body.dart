import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/New_Collection.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/Rows_sale_widget.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/ThreeContainers.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/bottom_navigation.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/home_New_Rows_widget.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/home_fashon_sale.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/listView.builder_New.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/listview.builder_sale.dart';

import 'package:cloyhapp/features/Home/presentation/veiws/widget/listview_sale_items.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  // int selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FashonSale(),
          SizedBox(height: 10),
          RowsNewWidgets(),
          SizedBox(height: 22),
          ListViewNewHorizontal(),
          RowsSaleWidgets(),
          ListViewSaleHorizontal(),
          NewCollection(),
          ThreeContainers(),
        ],
      ),
    );
  }
}

int selectedIndex = 0;
