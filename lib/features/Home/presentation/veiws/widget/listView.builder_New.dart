import 'package:cloyhapp/cubit/get_new_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewNewHorizontal extends StatelessWidget {
  final int limit = 10;
  final int page = 1;

  const ListViewNewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductLoaded) {
          final products = state.newProduct.data?.products;

          if (products == null || products.isEmpty) {
            return const Center(child: Text("لا توجد منتجات حالياً"));
          }

          return SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 184,
                        width: 144,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: NetworkImage(product.imgCover ?? ""),
                            fit: BoxFit.fill,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: List.generate(
                          5,
                          (i) => const Icon(Icons.star_border,
                              color: Colors.grey, size: 20),
                        )..add(
                            Text(
                              "${product.ratingsAverage ?? 0}",
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                      ),
                      const SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.colors?.join(', ') ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.grey),
                            ),
                            Text(
                              product.name ?? '',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "${product.price?.toStringAsFixed(2) ?? ''} EGP",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        } else if (state is ProductError) {
          return Center(child: Text("خطأ: ${state.message}"));
        }

        return const Center(child: Text("لا توجد بيانات."));
      },
    );
  }
}


//
// SizedBox(
// height: 300,
// width: double.infinity,
// child: SizedBox(
// height: 320,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 5,
// itemBuilder: (context, index) {
// return Padding(
// padding: const EdgeInsets.only(right: 10),
// child: SizedBox(
// width: 160,
// child: ListViewNewItems(),
// ),
// );
// },
// ),
// ),
// );