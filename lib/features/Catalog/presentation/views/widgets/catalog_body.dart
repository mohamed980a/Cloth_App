import 'package:cloyhapp/features/Catalog/presentation/views/widgets/Icons.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/gridview_vertical.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_horizontal.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_vertical.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_vertical_item.dart';
import 'package:flutter/material.dart';
import 'custom_AppBar.dart';
import 'gridview_vertical_item.dart';
import 'listview_horizontal_item.dart';

class CatalogBody extends StatefulWidget {
  final String token;
  final String categoryId;
  final String subcategoryId;

  const CatalogBody({
    super.key,
    required this.token,
    required this.categoryId,
    required this.subcategoryId,
  });

  @override
  State<CatalogBody> createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 18),
                const Text(
                  "Women's tops",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const SubCategoriesList(),
                const SizedBox(height: 18),
                IconsHorizontal(
                  isGrid: isGrid,
                  onToggle: () {
                    setState(() {
                      isGrid = !isGrid;
                    });
                  },
                ),
                const SizedBox(height: 26),
                isGrid
                    ? GridviewVerticalItem()
                    : ListviewVerticalItem(
                        categoryId: '',
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
