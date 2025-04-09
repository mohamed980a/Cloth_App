import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubit/all_categories_cubit.dart';
import '../../../../../cubit/all_categories_state.dart';

class CategoryItemListview extends StatelessWidget {
  const CategoryItemListview({super.key});

  @override
  Widget build(BuildContext context) {


    return BlocBuilder<AllCategoriesCubit, AllCategoriesState>(
      builder: (context, state) {
        if (state is AllCategoriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AllCategoriesLoaded) {
          final categories = state.categories.data ?? [];

          return SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return TextButton(
                    onPressed: () {},
                    child: Text(
                      category.name ?? 'No Name',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ));

              },
            ),
          );
        } else if (state is AllCategoriesError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const Center(child: Text('No data'));
        }
      },
    );



  }
}
