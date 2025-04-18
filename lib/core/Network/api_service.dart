// // class ApiConstants {
// //   static const String
// //   apiBaseUrl = "https://api.tryon-store.xyz/api/v1/";
// //   static const String login = "users/login";
// //   static const String signup = "users/signup";
// // }
// //
// //   class ApiErrors {
// //
// //   static const String badRequestError = "badRequestError";
// //
// //   static const String noContent = "noContent";
// //
// //   static const String forbiddenError = "forbiddenError";
// //
// //   static const String unauthorizedError = "unauthorizedError";
// //
// //   static const String notFoundError = "notFoundError";
// //
// //   static const String conflictError = "conflictError";
// //
// //   static const String internalServerError = "internalServerError";
// //
// //   static const String unknownError = "unknownError";
// //
// //   static const String timeoutError = "timeoutError";
// //
// //   static const String defaultError = "defaultError";
// //
// //   static const String cacheError = "cacheError";
// //   static const String noInternetError = "noInternetError";
// //
// //   static const String loadingMessage = "loading_message";
// //
// //   static const String retryAgainMessage = "retry_again_message";
// //
// //   static const String ok = "Ok";
// //   }

import 'package:cloyhapp/features/Auth/data/model/add_to_cart.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';

import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/Auth/data/model/all_categories/all_categories.dart';
import '../../features/Auth/data/model/forgotpassword.dart';
import '../../features/Auth/data/model/signup.dart';
import '../../features/Auth/data/model/wishlist.dart';
import '../../features/Catalog/logic/model_prod_cat.dart';
import '../../features/Catalog/logic/subcatproduct.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api.tryon-store.xyz/api/v1/")
abstract class LoginApi {
  factory LoginApi(Dio dio, {String baseUrl}) = _LoginApi;

  @POST("users/signup")
  Future<User> signUp(@Body() Signup request);

  @POST("users/login")
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
    @Header("Authorization") String authorizationHeader,
  );
  @POST("users/forgotPassword")
  Future<ForgotPasswordResponse> forgotPassword(
      @Body() ForgotPasswordRequest request);

  @GET("categories")
  Future<AllCategories> getCategories();
  @GET("subcategories")
  Future<SubCategoryResponse> getSubCategories();

  // @GET("categories/{categoryId}/products")
  // Future<Products> getProducts(
  //     @Path("categoryId") String categoryId,
  //     @Query("keyword") String keyword,
  //     @Query("limit") int limit,
  //     @Query("subcategories[in]") String subcategoryIds);

  @GET('products/newProducts')
  Future<NewProduct> getNewProducts(
    @Query('limit') int limit,
    @Query('page') int page,
  );

  @GET("products/onSaleProducts")
  Future<NewProduct> getOnSaleProducts({
    @Query("limit") int limit = 10,
    @Query("page") int page = 1,
  });

  @GET("wishlist")
  Future<WishlistResponse> getWishlist(
    @Header("Authorization") String authorizationHeader,
  );

  @POST('wishlist')
  Future<void> addToWishlist(
    @Body() Map<String, dynamic> body,
  );
  // @GET("categories/{categoryId}/products")
  // Future<List<NewProduct>> getProductsCategory(
  //   @Path("categoryId") String categoryId,
  //   @Header("Authorization") String bearerToken,
  //   @Query("keyword") String? keyword,
  //   @Query("limit") int limit,
  //   @Query("subcategories[in]") String subcategoryId,
  // );

  //https://api.tryon-store.xyz/api/v1/categories/67f14eac0cfab7d1165898a6/products
  @GET("categories/{categoryId}/products")
  Future<Products> getAllProductsOnCategory(
    @Path("categoryId") String categoryId,
    @Header("Authorization") String bearerToken,
    @Query("keyword") String? keyword,
    @Query("limit") int limit,
    @Query("subcategories[in]") String subcategoryId,
  );

  @GET("categories")
  Future<List<AllCategories>> getCategoryMohamed(
      @Header("Authorization") String token);

  @GET("categories/{categoryId}/products")
  Future<ProductsResponse> getProductsByCategory(
      @Path("categoryId") String categoryId);

  @GET("subcategories/{id}/products")
  Future<HttpResponse<Subcatproduct>> getProductsBySubCategory(
      @Path("id") String subCategoryId);

  @GET("/products/{id}")
  Future<Product> getProductDetails(@Path("id") int id);

  //https://api.tryon-store.xyz/api/v1/cart
  @POST("cart")
  Future<AddToCart> addToCart(
    @Header("Authorization") String authorizationHeader,
    @Body() Map<String, dynamic> body,
  );
}

class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}

class LoginResponse {
  final String token;

  LoginResponse({required this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(token: json['token']);
  }
}
