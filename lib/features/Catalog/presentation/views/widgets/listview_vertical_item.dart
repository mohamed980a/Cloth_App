import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../cubit/all_products_on_category_cubit.dart';
import '../../../../../cubit/all_products_on_category_state.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';

import '../../../../../cubit/get_new_products_cubit.dart';
import '../../../logic/catlog_cubit.dart';
import '../../../logic/catlog_state.dart';

class ListviewVerticalItem extends StatelessWidget {
  const ListviewVerticalItem({super.key, required this.categoryId});
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ProductLoaded) {
          final products = state.newProduct.data?.products;
          if (products == null || products.isEmpty) {
            return const Center(child: Text("لا توجد منتجات حالياً"));
          }
          return SizedBox(
              height: 700,
              child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                      ],
                    ),
                    child: Row(
                      children: [
                        // 🖼️ Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            product.imgCover ?? '',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image_not_supported),
                          ),
                        ),
                        const SizedBox(width: 10),
                        // 📦 Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.slug ?? 'No Brand',
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product.name ?? 'No Name',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "${(product.price ?? 0).toStringAsFixed(2)}\$",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ));
        } else if (state is ProductError) {
          return Center(child: Text("خطأ: ${state.message}"));
        }

        return const Center(child: Text("لا توجد بيانات."));
      },
    );
  }
}
