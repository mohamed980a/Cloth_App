import 'package:cloyhapp/features/checkOut/presentation/view/widgets/listView_items.dart';
import 'package:flutter/material.dart';

class CheckOutListView extends StatelessWidget {
  const CheckOutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CheckOutListViewItems();
      },
      itemCount: 5,
    );
  }
}
