import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_listview_vertical_container.dart';
import 'package:flutter/material.dart';

class FavListviewVertical extends StatelessWidget {
  const FavListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return FavListviewVerticalContainer();
      },
      itemCount: 8,
    );
  }
}
