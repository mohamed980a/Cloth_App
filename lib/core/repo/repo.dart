import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/all_categories.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';

import '../../features/Auth/data/model/forgotpassword.dart';
import '../../features/Auth/data/model/signup.dart';
import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';

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

class ProductRepository {
  final LoginApi apiService;

  ProductRepository(this.apiService);

  Future<List<Products>> getProducts(String categoryId, String keyword,
      int limit, String subcategoryIds) async {
    try {
      final products = await apiService.getProducts(
        categoryId,
        keyword,
        limit,
        subcategoryIds,
      );
      return products;
    } catch (e) {
      rethrow;
    }
  }
}

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
