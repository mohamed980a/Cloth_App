part of 'sub_category_product_cubit.dart';

@immutable
abstract class SubCategoryProductState {}

class SubCategoryProductInitial extends SubCategoryProductState {}

class SubCategoryProductLoading extends SubCategoryProductState {}

class SubCategoryProductLoaded extends SubCategoryProductState {
  final NewProduct products;

  SubCategoryProductLoaded(this.products);

  @override
  List<Object?> get props => [products];
}

class SubCategoryProductError extends SubCategoryProductState {
  final String message;

  SubCategoryProductError(this.message);

  @override
  List<Object?> get props => [message];
}
