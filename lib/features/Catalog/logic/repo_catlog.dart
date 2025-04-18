import 'package:cloyhapp/features/Auth/data/model/all_product_on_category/all_product_on_category.dart';

import '../../../core/Network/api_service.dart';
import '../../Auth/data/model/all_categories/all_categories.dart';
import '../../Auth/data/model/all_categories/products.dart';
import '../../Auth/data/model/new_product.dart';

// class ProductOnCategoryRepositoryMohamed {
//   final LoginApi api;
//
//   ProductOnCategoryRepositoryMohamed(this.api);
//
//   Future<AllProductOnCategory> fetchProductsByCategory(String token, String categoryId) async {
//     return await api.getAllProductsOnCategory('1', token, 'keyword', 5, '1');
//
//   }
// }

// class AllProductOnCategoryRepository {
//
//   final LoginApi apiService;
//
//   AllProductOnCategoryRepository(this.apiService);
//
//   Future<AllProductOnCategory> getAllProductsOnCategory({
//   required String categoryId,
//   required String bearerToken,
//   String? keyword,
//   required int limit,
//   required String subcategoryId,
//   }) {
//   return apiService.getAllProductsOnCategory(
//   categoryId,
//   bearerToken,
//   keyword,
//   limit,
//   subcategoryId,
//   );
//   }
//   }

class ProductRepository {
  final LoginApi apiService;

  ProductRepository(this.apiService);

  Future<List<NewProduct>> fetchProductsByCategory(String categoryId) async {
    final response = await apiService.getProductsByCategory(categoryId);
    return response.products;
  }
}

class CategoryRepository {
  final LoginApi api;

  CategoryRepository(this.api);

  Future<List<AllCategories>?> fetchAllCategories(String token) async {
    final response = await api.getCategoryMohamed("Bearer $token");
    return response ?? [];
  }
}
