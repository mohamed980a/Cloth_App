import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/features/Auth/data/model/add_to_cart.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/all_categories.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';

// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';

import '../../features/Auth/data/model/all_product_on_category/all_product_on_category.dart';
import '../../features/Auth/data/model/forgotpassword.dart';
import '../../features/Auth/data/model/signup.dart';
import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';

import '../../features/Auth/data/model/wishlist.dart';
import '../../features/Catalog/logic/model_prod_cat.dart';

class MyRepo {
  final LoginApi loginApi;

  MyRepo(this.loginApi);

  Future<LoginResponse> login(
      LoginRequest request, String authorizationHeader) async {
    return await loginApi.login(request, authorizationHeader);
  }

  Future<User> signUp(Signup request) async {
    return await loginApi.signUp(request);
  }
}

class ForgotPasswordRepository {
  final LoginApi apiClient;

  ForgotPasswordRepository({required this.apiClient});

  Future<String> forgotPassword(String email) async {
    try {
      final response =
          await apiClient.forgotPassword(ForgotPasswordRequest(email: email));
      return response.message;
    } catch (e) {
      throw Exception('Failed to send reset link');
    }
  }
}

// ////////////////////////////////////////  sub_categories.dart

class SubCategoriesRepository {
  final LoginApi api;

  SubCategoriesRepository({required this.api});

  Future<SubCategoryResponse> fetchSubCategories() {
    return api.getSubCategories();
  }
}

//////////////////////////////////////////  all_categories.dart
class AllCategoriesRepository {
  final LoginApi api;

  AllCategoriesRepository({required this.api});

  Future<AllCategories> fetchAllCategories() {
    return api.getCategories();
  }
}

//////////////////// all_Products_on_category.dart

// class ProductRepository {
//   final LoginApi apiService;
//
//   ProductRepository(this.apiService);
//
//   Future <Products> getProducts(String categoryId, String keyword,
//       int limit, String subcategoryIds) async {
//     try {
//       final products = await apiService.getProducts(
//         categoryId,
//         keyword,
//         limit,
//         subcategoryIds,
//       );
//       return products;
//     } catch (e) {
//       rethrow;
//     }
//   }
// }

//////////////////// Get New Products

// class ProductNewRepository {
//   final LoginApi apiClient;
//
//   ProductNewRepository({required this.apiClient});
//
//   Future<List<Products>> getNewProducts(int limit, int page) async {
//     try {
//       return await apiClient.getNewProducts(limit: limit, page: page);
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
class ProductNewRepository {
  final LoginApi amira;

  ProductNewRepository({required this.amira});

  Future<NewProduct> getNewProducts(limit, int page) async {
    try {
      final product = await amira.getNewProducts(limit, page);

      return product;
    } catch (e) {
      rethrow;
    }
  }
}

///////////////////////////////////////  on_sale_products.dart
class ProductOnSaleRepository {
  final LoginApi apiClient;

  ProductOnSaleRepository({required this.apiClient});

  Future<NewProduct> getOnSaleProducts(int limit, int page) async {
    try {
      return await apiClient.getOnSaleProducts(limit: limit, page: page);
    } catch (e) {
      rethrow;
    }
  }
}

///////////////////////////////////////  wishlist.dart
class WishlistRepository {
  final LoginApi apiClient;

  WishlistRepository({required this.apiClient});

  Future<WishlistResponse> getWishlist(String authorizationHeader) async {
    try {
      return await apiClient.getWishlist(authorizationHeader);
    } catch (e) {
      rethrow;
    }
  }
}

///////////////////////////////////////  wishlist.dart
// class AddToWishlistRepository {
//   final LoginApi apiClient;
//
//   AddToWishlistRepository({required this.apiClient});
//
//   Future<void> addToWishlist(Map<String, dynamic> body) async {
//     try {
//       await apiClient.addToWishlist(body);
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
class AddWishlistRepository {
  final LoginApi apiService;

  AddWishlistRepository(this.apiService);

  Future<void> addProductToWishlist(String productId) async {
    final body = {"productId": productId};
    await apiService.addToWishlist(body);
  }
}

///////////////////////////////////////  getProductsCategory.dart
// class GetProductsCategoryRepository {
//   final LoginApi api;
//
//   GetProductsCategoryRepository(this.api);
//
//   Future<ProductCategory> fetchProducts({
//     required String categoryId,
//     required String token,
//     String? keyword,
//     required int limit,
//     required String subcategoryId,
//   }) {
//     return api.getAllProductsOnCategory(
//       categoryId,
//       'Bearer $token',
//       keyword,
//       limit,
//       subcategoryId,
//     );
//   }
// }

//flutter pub run build_runner build --delete-conflicting-outputs
//https://api.tryon-store.xyz/api/v1/products/newProducts

class ProductSalesRepository {
  final LoginApi apiClient;

  ProductSalesRepository({required this.apiClient});

  Future<NewProduct> getOnSaleProducts(int limit, int page) async {
    try {
      return await apiClient.getOnSaleProducts(limit: limit, page: page);
    } catch (e) {
      rethrow;
    }
  }
}

class AllProductOnCategoryRepository {
  final LoginApi api;

  AllProductOnCategoryRepository(this.api);

  Future<Products> fetchAllProducts({
    required String categoryId,
    required String token,
    String? keyword,
    required int limit,
    required String subcategoryId,
  }) {
    return api.getAllProductsOnCategory(
      categoryId,
      'Bearer $token',
      keyword,
      limit,
      subcategoryId,
    );
  }
}

// flutter pub run build_runner build --delete-conflicting-outputs

//https://api.tryon-store.xyz/api/v1/cart
//add to cart
class AddToCartRepository {
  final LoginApi apiClient;

  AddToCartRepository({required this.apiClient});

  Future<AddToCart> addToCart(String token, Map<String, dynamic> body) async {
    try {
      final response = await apiClient.addToCart(token, body);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
