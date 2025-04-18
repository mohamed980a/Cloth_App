part of 'wishlist_cubit.dart';

abstract class AddWishlistState {}

class AddWishlistInitial extends AddWishlistState {}

class AddWishlistLoading extends AddWishlistState {}

class AddWishlistSuccess extends AddWishlistState {}

class AddWishlistError extends AddWishlistState {
  final String message;

  AddWishlistError(this.message);
}
