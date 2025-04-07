import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/features/Category/presentation/views/widgets/sub_category_item.dart';
import 'package:flutter/material.dart';

class SubCategoryItemListview extends StatelessWidget {
  const SubCategoryItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) => SubCategoryItem(
        name: 'Clothes',
        image: AppAssets.category,
      ),
    );
  }
}
