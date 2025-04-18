import 'package:equatable/equatable.dart';

class AddToCart extends Equatable {
  final String? status;
  final String? message;

  const AddToCart({this.status, this.message});

  factory AddToCart.fromJson(Map<String, dynamic> json) => AddToCart(
        status: json['status'] as String?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
      };

  @override
  List<Object?> get props => [status, message];
}
