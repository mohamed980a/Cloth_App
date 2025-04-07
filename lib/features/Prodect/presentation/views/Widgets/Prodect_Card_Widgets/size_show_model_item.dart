import 'package:flutter/material.dart';

import 'grid_view_item.dart';

class SizeShowModelItem extends StatelessWidget {
  const SizeShowModelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.upload_sharp),
        Text(
          "Size",
          style: TextStyle(fontSize: 50),
        ),
        GridViewItem(),
      ],
    );
  }
}
