import 'package:cloyhapp/core/repo/repo.dart';
import 'package:cloyhapp/cubit/all_categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState> {
  final AllCategoriesRepository repository;

  AllCategoriesCubit(this.repository) : super(AllCategoriesInitial());

  Future<void> getAllCategories() async {
    emit(AllCategoriesLoading());
    try {
      final data = await repository.fetchAllCategories();
      emit(AllCategoriesLoaded(data));
    } catch (e) {
      emit(AllCategoriesError(e.toString()));
    }
  }
}
