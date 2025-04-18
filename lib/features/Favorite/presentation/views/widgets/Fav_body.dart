import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Custom_AppBar.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_Icons.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_gridview_vertical.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_listview_vertical.dart';
import 'package:flutter/material.dart';

import 'Fav_listview_horizontal.dart';
import 'Fav_listview_vertical_container.dart';

class FavBody extends StatefulWidget {
  const FavBody({super.key});

  @override
  State<FavBody> createState() => _FavBodyState();
}

class _FavBodyState extends State<FavBody> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FavCustomAppbar(),
              Text(
                "Favorites",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              FavListviewHorizontal(),
              SizedBox(height: 15),
              Fav_IconsHorizontal(
                isGrid: isGrid,
                onToggle: () {
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
              ),
              SizedBox(height: 25),
              isGrid ? FavListviewVerticalContainer() : FavGridviewVertical()
            ],
          ),
        ),
      )
    ]);
  }
}
