import 'package:cloyhapp/core/Utils/color.dart';
import 'package:cloyhapp/features/Category/presentation/views/widgets/category_item_listview.dart';
import 'package:cloyhapp/features/Category/presentation/views/widgets/sub_category_item_listview.dart';
import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios)),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "SearchCategortBody");
                },
                icon: Icon(Icons.search)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: CategoryItemListview(),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          width: 343,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: StaticColors.util_color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SUMMER SALES",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Up to 50% off",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SubCategoryItemListview())
      ],
    );
  }
}
