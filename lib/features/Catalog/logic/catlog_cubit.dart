import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
import 'package:cloyhapp/features/Catalog/logic/model_prod_cat.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/repo/repo.dart';
import 'catlog_state.dart';

class ProductOnCategoryCubitMohamed extends Cubit<ProductOnCategoryState> {
  // final AllProductOnCategoryRepository repository;
  // final String token;
  //
  // ProductOnCategoryCubitMohamed(this.repository, this.token)
  //     : super(ProductOnCategoryInitial());
  //
  // void fetchProductsByCategoryMohamed(String categoryId) async {
  //   try {
  //     emit(ProductOnCategoryLoading());
  //     final products =
  //     await repository.fetchAllProducts(token, categoryId);
  //     emit(ProductOnCategoryLoaded( products as List<Products>));
  //   } catch (e) {
  //     emit(ProductOnCategoryError(e.toString()));
  //   }}
  //

  final AllProductOnCategoryRepository repository;

  ProductOnCategoryCubitMohamed(this.repository)
      : super(ProductOnCategoryInitial());

  Future<void> fetchProducts({
    required String categoryId,
    required String bearerToken,
    String? keyword,
    required int limit,
    required String subcategoryId,
  }) async {
    emit(ProductOnCategoryLoading());
    try {
      final response = await repository.fetchAllProducts(
        categoryId: categoryId,
        keyword: keyword,
        limit: limit,
        subcategoryId: subcategoryId,
        token: 'Bearer $bearerToken',
      );
      emit(ProductOnCategoryLoaded(response as NewProduct));
    } catch (e) {
      emit(ProductOnCategoryError(e.toString()));
    }
  }
}
