import 'package:cloyhapp/features/Category/presentation/views/widgets/category_body.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CategoryBody(),
    ));
  }
}
