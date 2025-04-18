import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';

class ProductsResponse {
  final String status;
  final List<NewProduct> products;

  ProductsResponse({
    required this.status,
    required this.products,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> dataList = json['data'] ?? [];
    final products = dataList.map((e) => NewProduct.fromJson(e)).toList();

    return ProductsResponse(
      status: json['status'],
      products: products,
    );
  }
}
