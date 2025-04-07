import 'package:cloyhapp/features/Home/presentation/veiws/widget/listView_New_items.dart';

import 'package:flutter/material.dart';

class ListViewNewHorizontal extends StatelessWidget {
  const ListViewNewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: SizedBox(
        height: 320,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: 160,
                child: ListViewNewItems(),
              ),
            );
          },
        ),
      ),
    );
  }
}
