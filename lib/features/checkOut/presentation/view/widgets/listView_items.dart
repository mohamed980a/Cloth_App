import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/cubit/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cloyhapp/features/checkOut/presentation/view/widgets/PopUpMenue.dart';

class CheckOutListViewItems extends StatelessWidget {
  final String bearerToken;
  final String productId;
  final String productName;
  final String productImage;
  final int quantity;
  final String color;
  final String size;
  final double price;

  const CheckOutListViewItems({
    super.key,
    required this.bearerToken,
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.quantity,
    required this.color,
    required this.size,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(productImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Color: $color'),
                      const SizedBox(width: 15),
                      Text('Size: $size'),
                    ],
                  ),
                  const SizedBox(height: 14),

                  // BlocBuilder لعرض الحالة والاستجابة
                  BlocBuilder<AddToCartCubit, AddToCartState>(
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (state is AddToCartLoading)
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: LinearProgressIndicator(),
                            ),
                          if (state is AddToCartSuccess)
                            Text(
                              state.response.message ?? 'تم التحديث بنجاح',
                              style: const TextStyle(color: Colors.green),
                            ),
                          if (state is AddToCartError)
                            Text(
                              state.error,
                              style: const TextStyle(color: Colors.red),
                            ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              // زرار نقص الكمية
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 6, color: Colors.grey),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    if (quantity > 1) {
                                      context.read<AddToCartCubit>().addToCart(
                                        bearerToken: 'Bearer $bearerToken',
                                        body: {
                                          "product_id": productId,
                                          "quantity": quantity - 1,
                                        },
                                      );
                                    }
                                  },
                                  icon: const Icon(Icons.remove),
                                  color: Colors.black,
                                  iconSize: 30,
                                ),
                              ),

                              const SizedBox(width: 18),

                              // الكمية الحالية
                              Text(
                                '$quantity',
                                style: const TextStyle(fontSize: 18),
                              ),

                              const SizedBox(width: 18),

                              // زرار زيادة الكمية
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 6, color: Colors.grey),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    context.read<AddToCartCubit>().addToCart(
                                      bearerToken: 'Bearer $bearerToken',
                                      body: {
                                        "product_id": productId,
                                        "quantity": quantity + 1,
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.add),
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            // القائمة الجانبية: القائمة المنبثقة + السعر
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const PropUpMenueWidget(),
                  const SizedBox(height: 45),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
