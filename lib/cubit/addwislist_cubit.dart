//
// // AddWishlistCubit
// import 'package:bloc/bloc.dart';
// import 'package:cloyhapp/core/repo/repo.dart';
// import 'package:cloyhapp/cubit/addwislist_state.dart';
// import 'package:cloyhapp/features/Auth/data/model/wishlist.dart';
// import 'package:equatable/equatable.dart';
//
// import 'addwislist_state.dart';
//
//
// class AddWishlistCubit extends Cubit<AddWishlistState> {
//   final WishlistRepository wishlistRepository;
//
//   AddWishlistCubit(this.wishlistRepository) : super(AddWishlistInitial());
//
//   void addToWishlist(String productId) async {
//     emit(AddWishlistLoading());
//     try {
//       final response = await wishlistRepository.addToWishlist(productId);
//       emit(AddWishlistSuccess(response));
//     } catch (e) {
//       emit(AddWishlistError(e.toString()));
//     }
//   }
// }