import 'package:equatable/equatable.dart';
import 'package:cloyhapp/features/Auth/data/model/wishlist.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object?> get props => [];
}

class WishlistInitial extends WishlistState {}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final WishlistResponse wishlist;

  const WishlistLoaded(this.wishlist);

  @override
  List<Object?> get props => [wishlist];
}

class WishlistEmpty extends WishlistState {}

class WishlistError extends WishlistState {
  final String message;

  const WishlistError(this.message);

  @override
  List<Object?> get props => [message];
}
