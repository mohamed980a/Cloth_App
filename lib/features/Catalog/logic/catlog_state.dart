import 'package:cloyhapp/features/Catalog/logic/model_prod_cat.dart';
import 'package:equatable/equatable.dart';

import '../../Auth/data/model/all_categories/products.dart';
import '../../Auth/data/model/all_product_on_category/all_product_on_category.dart';

abstract class ProductOnCategoryState extends Equatable {
  const ProductOnCategoryState();

  @override
  List<Object?> get props => [];
}

class ProductOnCategoryInitial extends ProductOnCategoryState {}

class ProductOnCategoryLoading extends ProductOnCategoryState {}

class ProductOnCategoryLoaded extends ProductOnCategoryState {
  final NewProduct products;

  const ProductOnCategoryLoaded(this.products);

  @override
  List<Object?> get props => [products];
}

class ProductOnCategoryError extends ProductOnCategoryState {
  final String message;

  const ProductOnCategoryError(this.message);

  @override
  List<Object?> get props => [message];
}

//   @override
//   List<Object> get props => [];
// }
//
// class ProductOnCategoryInitial extends ProductOnCategoryState {}
//
// class ProductOnCategoryLoading extends ProductOnCategoryState {}
//
// class ProductOnCategoryLoaded extends ProductOnCategoryState {
//   final List<Products> products;
//
//   const ProductOnCategoryLoaded(this.products);
//
//   @override
// //   List<Object> get props => [products];
// }
//
// class ProductOnCategoryError extends ProductOnCategoryState {
//   final String message;
//
//   const ProductOnCategoryError(this.message);
//
//   @override
//   List<Object> get props => [message];
