import 'package:cloyhapp/core/Network/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/Auth/data/model/all_categories/products.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final NewProduct newProduct;

  const ProductLoaded({required this.newProduct});

  @override
  List<Object> get props => [newProduct];
}

class ProductError extends ProductState {
  final String message;

  const ProductError({required this.message});

  @override
  List<Object> get props => [message];
}

class ProductCubit extends Cubit<ProductState> {
  final LoginApi apiService;

  ProductCubit({required this.apiService}) : super(ProductInitial());
  Future<void> fetchNewProducts(int limit, int page) async {
    emit(ProductLoading());

    try {
      final newProduct = await apiService.getNewProducts(limit, page);
      emit(ProductLoaded(newProduct: newProduct));
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }
}
