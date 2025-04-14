import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductSalesState extends Equatable {
  @override
  List<Object> get props => [];
}

class ProductSalesInitial extends ProductSalesState {}

class ProductSalesLoading extends ProductSalesState {}

class ProductSalesLoaded extends ProductSalesState {
  final NewProduct salesProduct;

  ProductSalesLoaded(this.salesProduct);

  @override
  List<Object> get props => [salesProduct];
}

class ProductSalesError extends ProductSalesState {
  final String message;

  ProductSalesError(this.message);

  @override
  List<Object> get props => [message];
}


class ProductSalesCubit extends Cubit<ProductSalesState> {
  final LoginApi apiService;

  ProductSalesCubit({required this.apiService}) : super(ProductSalesInitial());

  Future<void> fetchPSalesroducts(int limit, int page) async {
    emit(ProductSalesLoading());
    try {
      final products = await apiService.getOnSaleProducts(limit: limit, page: page);
      emit(ProductSalesLoaded(products as NewProduct));
    } catch (e) {
      emit(ProductSalesError(e.toString()));
    }
  }
}
