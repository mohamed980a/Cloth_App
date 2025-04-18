import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/features/Catalog/logic/subcatproduct.dart';
import 'package:dio/dio.dart';

class SubCategoryProductRepository {
  final LoginApi apiClient;

  SubCategoryProductRepository(this.apiClient);

  Future<List<Product>> fetchProductsBySubCategory(String subCategoryId) async {
    final response = await apiClient.getProductsBySubCategory(subCategoryId);
    return response.data.data;
  }
}
