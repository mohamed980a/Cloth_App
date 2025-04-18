import 'package:cloyhapp/features/Catalog/presentation/views/widgets/catalog_body.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CatalogBody(
          token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ey...",
          categoryId: "1",
          subcategoryId: "2",
        ),
      ),
    );
  }
}
