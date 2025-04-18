import 'package:bloc/bloc.dart';
import 'package:cloyhapp/features/Auth/data/model/add_to_cart.dart';
import 'package:equatable/equatable.dart';

import '../../core/repo/repo.dart';

abstract class AddToCartState extends Equatable {
  const AddToCartState();

  @override
  List<Object?> get props => [];
}

class AddToCartInitial extends AddToCartState {}

class AddToCartLoading extends AddToCartState {}

class AddToCartSuccess extends AddToCartState {
  final AddToCart response;

  const AddToCartSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class AddToCartError extends AddToCartState {
  final String error;

  const AddToCartError(this.error);

  @override
  List<Object> get props => [error];
}

class AddToCartFailure extends AddToCartState {
  final String message;

  const AddToCartFailure(this.message);

  @override
  List<Object?> get props => [message];
}

class AddToCartCubit extends Cubit<AddToCartState> {
  final AddToCartRepository repository;

  AddToCartCubit(this.repository) : super(AddToCartInitial());

  void addToCart({
    required String bearerToken,
    required Map<String, dynamic> body,
  }) async {
    emit(AddToCartLoading());
    try {
      final response = await repository.addToCart(bearerToken, body);
      emit(AddToCartSuccess(response));
    } catch (e) {
      emit(AddToCartError(e.toString()));
    }
  }
}
