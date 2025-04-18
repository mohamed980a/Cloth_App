import 'package:bloc/bloc.dart';
import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
import 'package:cloyhapp/features/Catalog/logic/sub_category_product_repo.dart';
import 'package:cloyhapp/features/Catalog/logic/subcatproduct.dart';
import 'package:meta/meta.dart';

part 'sub_category_product_state.dart';

class SubCategoryProductCubit extends Cubit<SubCategoryProductState> {
  final SubCategoryProductRepository repository;

  SubCategoryProductCubit(this.repository) : super(SubCategoryProductInitial());

  void getProducts(String subCategoryId) async {
    emit(SubCategoryProductLoading());
    try {
      final products =
          await repository.fetchProductsBySubCategory(subCategoryId);
      emit(SubCategoryProductLoaded(products as NewProduct));
    } catch (e) {
      emit(SubCategoryProductError("فشل في تحميل المنتجات: $e"));
    }
  }
}
