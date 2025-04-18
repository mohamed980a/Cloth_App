// import 'package:bloc/bloc.dart';
// import 'package:cloyhapp/core/repo/repo.dart';
// import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
// import 'package:meta/meta.dart';
//
// part 'getproductscategory_state.dart';
//
// class GetproductscategoryCubit extends Cubit<GetproductscategoryState> {
//   final GetProductsCategoryRepository repository;
//   GetproductscategoryCubit(this.repository)
//       : super(GetproductscategoryInitial());
//
//   Future<void> Getproductscategory() async {
//     emit(GetproductscategoryLoading());
//     try {
//       final products = await repository.fetchProducts(
//         categoryId: '67f14eac0cfab7d1165898a6',
//         token: 'your_token_here',
//         limit: 1,
//         subcategoryId: '621459855866598',
//       );
//       emit(GetproductscategoryLoaded(products as List<NewProduct>));
//     } catch (e) {
//       emit(GetproductscategoryError(e.toString()));
//     }
//   }
// }
