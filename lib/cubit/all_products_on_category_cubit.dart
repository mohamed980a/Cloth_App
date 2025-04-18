import 'package:cloyhapp/core/repo/repo.dart';
import 'package:cloyhapp/features/Auth/data/model/all_product_on_category/all_product_on_category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'all_products_on_category_state.dart';

class AllProductsOnCategoryCubit extends Cubit<AllProductsOnCategoryState> {
  final AllProductOnCategoryRepository repository;

  AllProductsOnCategoryCubit(
    this.repository,
  ) : super(AllProductsInitial());

  Future<void> fetchAllProducts({
    required String categoryId,
    required String token,
    String? keyword,
    required int limit,
    required String subcategoryId,
  }) async {
    emit(AllProductsLoading());
    try {
      final products = await repository.fetchAllProducts(
        categoryId: categoryId,
        token: token,
        keyword: keyword,
        limit: limit,
        subcategoryId: subcategoryId,
      );
      emit(AllProductsLoaded(products as AllProductOnCategory));
    } catch (e) {
      emit(AllProductsError(e.toString()));
    }
  }
}
