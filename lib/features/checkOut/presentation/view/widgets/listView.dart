import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/cubit/add_to_cart.dart';
import 'package:cloyhapp/features/checkOut/presentation/view/widgets/listView_items.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cloyhapp/core/Assets/assets_images.dart';

import 'package:cloyhapp/core/repo/repo.dart';

class CheckOutListView extends StatelessWidget {
  const CheckOutListView({super.key});

  @override
  Widget build(BuildContext context) {
    // مثال بيانات ثابتة (ممكن تجيبهم من API لو عايز بعد كده)
    final List<Map<String, dynamic>> cartItems = [
      {
        "productId": "15",
        "productName": "Pullover",
        "productImage": AppAssets.pullover,
        "color": "Black",
        "size": "L",
        "quantity": 2,
        "price": 50.0,
      },
      {
        "productId": "16",
        "productName": "T-Shirt",
        "productImage": AppAssets.pullover,
        "color": "White",
        "size": "M",
        "quantity": 1,
        "price": 30.0,
      },
      {
        "productId": "17",
        "productName": "Jacket",
        "productImage": AppAssets.pullover,
        "color": "Brown",
        "size": "XL",
        "quantity": 3,
        "price": 120.0,
      },
    ];

    const String token = "YOUR_ACTUAL_TOKEN_HERE";

    return BlocProvider(
      create: (context) => AddToCartCubit(
        AddToCartRepository(
          apiClient: LoginApi(Dio()),
        ),
      ),
      child: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return CheckOutListViewItems(
            bearerToken: token,
            productId: item["productId"],
            productName: item["productName"],
            productImage: item["productImage"],
            color: item["color"],
            size: item["size"],
            quantity: item["quantity"],
            price: item["price"],
          );
        },
      ),
    );
  }
}
