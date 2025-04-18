import 'package:cloyhapp/features/MyProfile/presentation/views/widgets/ListTile_container.dart';
import 'package:flutter/material.dart';

import 'listTile.dart';

class ListtileListview extends StatelessWidget {
  const ListtileListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, i) {
          return ListtileContainer(
              title: list_tile[i].title, subtitle: list_tile[i].subtitle);
        },
        itemCount: list_tile.length,
      ),
    );
  }
}
