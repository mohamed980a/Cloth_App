import 'package:bloc/bloc.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
import 'package:meta/meta.dart';

import '../../../Catalog/logic/repo_catlog.dart';
import 'details_product_repo.dart';
import 'detalis_product_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsRepository repository;

  ProductDetailsCubit(this.repository) : super(ProductDetailsInitial());

  void fetchProductDetails(int id) async {
    try {
      emit(ProductDetailsLoading());
      final product = await repository.getProductDetails(id);
      emit(ProductDetailsLoaded(product as Products));
    } catch (e) {
      emit(ProductDetailsError("Failed to load product"));
    }
  }
}
