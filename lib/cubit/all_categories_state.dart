import 'package:cloyhapp/features/Auth/data/model/all_categories/all_categories.dart';
import 'package:equatable/equatable.dart';

abstract class AllCategoriesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AllCategoriesInitial extends AllCategoriesState {}

class AllCategoriesLoading extends AllCategoriesState {}

class AllCategoriesLoaded extends AllCategoriesState {
  final AllCategories categories;

  AllCategoriesLoaded(this.categories);

  @override
  List<Object?> get props => [categories];
}

class AllCategoriesError extends AllCategoriesState {
  final String message;

  AllCategoriesError(this.message);

  @override
  List<Object?> get props => [message];
}
