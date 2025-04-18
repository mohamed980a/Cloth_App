import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/prodect_screen.dart';
import '../../../../../cubit/all_products_on_category_cubit.dart';
import '../../../../../cubit/all_products_on_category_state.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';

import '../../../../../cubit/get_new_products_cubit.dart';
import '../../../logic/catlog_cubit.dart';
import '../../../logic/catlog_state.dart';

class GridviewVerticalItem extends StatelessWidget {
  const GridviewVerticalItem({super.key});

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
              child: GridView.builder(
                padding: const EdgeInsets.all(5),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12)),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              product.imgCover ?? '',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.image_not_supported),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Rating row
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (star) => Icon(
                                      Icons.star,
                                      color:
                                          (star < (product.ratingsAverage ?? 0))
                                              ? Colors.amber
                                              : Colors.grey[300],
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    "(${product.ratingsQuantity ?? 0})",
                                    style: const TextStyle(
                                        fontSize: 12, color: Color(0xff9B9B9B)),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    icon: const Icon(Icons.favorite_border,
                                        color: Colors.grey, size: 20),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProdectScreen()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              // Name
                              Text(
                                product.name ?? 'No Name',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              // Price
                              Text(
                                "${(product.price ?? 0).toStringAsFixed(2)} \$",
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
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
