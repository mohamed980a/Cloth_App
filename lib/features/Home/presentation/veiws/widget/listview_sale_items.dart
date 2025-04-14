import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubit/get_sales_products_cubit.dart';

class ListViewSaleItems extends StatelessWidget {
  const ListViewSaleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductSalesCubit, ProductSalesState>(
        builder: (context, state) {
      if (state is ProductSalesLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is ProductSalesLoaded) {
        final products = state.salesProduct.data?.products;

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
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star_border, color: Colors.grey, size: 20),
                Icon(Icons.star_border, color: Colors.grey, size: 20),
                Icon(Icons.star_border, color: Colors.grey, size: 20),
                Icon(Icons.star_border, color: Colors.grey, size: 20),
                Icon(Icons.star_border, color: Colors.grey, size: 20),
                Text(
                    "${product.ratingsAverage ?? 0}",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            ////////////////////////////////////////////////////////////

            /////////////////////////////////////////////////////////////
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Mango Boy',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                  Text(
                      product.name ?? '',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  /////////////////////////////////////////////////////
                  SizedBox(height: 3),
                  Text(
                    "${product.price?.toStringAsFixed(2) ?? ''} EGP",
                    style: TextStyle(
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
      } else if (state is ProductSalesError) {
        return Center(child: Text("خطأ: ${state.message}"));
      }

      return const Center(child: Text("لا توجد بيانات."));
    },
    ),
    );
  }
}
