import 'package:cloyhapp/features/Auth/data/model/all_product_on_category/all_product_on_category.dart';

abstract class AllProductsOnCategoryState {}

class AllProductsInitial extends AllProductsOnCategoryState {}

class AllProductsLoading extends AllProductsOnCategoryState {}

class AllProductsLoaded extends AllProductsOnCategoryState {
  final AllProductOnCategory products;

  AllProductsLoaded(this.products);
}

class AllProductsError extends AllProductsOnCategoryState {
  final String message;

  AllProductsError(this.message);
}
