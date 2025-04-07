import 'package:cloyhapp/core/repo/repo.dart';
import 'package:cloyhapp/cubit/sub_categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubCategoriesCubit extends Cubit<SubCategoriesState> {
  final SubCategoriesRepository repository;

  SubCategoriesCubit(this.repository) : super(SubCategoriesInitial());

  Future<void> getSubCategories() async {
    emit(SubCategoriesLoading());
    try {
      final response = await repository.fetchSubCategories();
      emit(SubCategoriesLoaded(response.data));
    } catch (e) {
      emit(SubCategoriesError("Failed to load subcategories: ${e.toString()}"));
    }
  }
}
