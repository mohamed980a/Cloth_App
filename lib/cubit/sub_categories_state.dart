import 'package:equatable/equatable.dart';
import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';

abstract class SubCategoriesState extends Equatable {
  const SubCategoriesState();

  @override
  List<Object?> get props => [];
}

class SubCategoriesInitial extends SubCategoriesState {}

class SubCategoriesLoading extends SubCategoriesState {}

class SubCategoriesLoaded extends SubCategoriesState {
  final List<SubCategory> subCategories;

  const SubCategoriesLoaded(this.subCategories);

  @override
  List<Object?> get props => [subCategories];
}

class SubCategoriesError extends SubCategoriesState {
  final String message;

  const SubCategoriesError(this.message);

  @override
  List<Object?> get props => [message];
}
