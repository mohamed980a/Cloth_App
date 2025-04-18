import 'package:bloc/bloc.dart';
import 'package:cloyhapp/core/Utils/constant.dart';
import 'package:cloyhapp/core/repo/repo.dart';
import 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  final WishlistRepository wishlistRepository;

  WishlistCubit(this.wishlistRepository) : super(WishlistInitial());

  void getWishlist() async {
    emit(WishlistLoading());
    try {
      final wishlist = await wishlistRepository.getWishlist(
        'Bearer $token',
      );

      if (wishlist.data.wishlist.isEmpty) {
        emit(WishlistEmpty());
      } else {
        emit(WishlistLoaded(wishlist));
      }
    } catch (e) {
      emit(WishlistError(e.toString()));
    }
  }
}
