import 'package:cloyhapp/features/Catalog/presentation/views/widgets/Icons.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/gridview_vertical.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_horizontal.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_vertical.dart';
import 'package:flutter/material.dart';
import 'custom_AppBar.dart';

class CatalogBody extends StatefulWidget {
  const CatalogBody({super.key});
  @override
  State<CatalogBody> createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
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
              CustomAppBar(),
              SizedBox(height: 18),
              Text(
                "Women's tops",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              ListviewHorizontal(),
              SizedBox(height: 18),
              IconsHorizontal(
                isGrid: isGrid,
                onToggle: () {
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
              ),
              SizedBox(height: 26),
              isGrid ? const GridviewVertical() : const ListviewVertical(),
            ],
          ),
        ),
      )
    ]);
  }
}
