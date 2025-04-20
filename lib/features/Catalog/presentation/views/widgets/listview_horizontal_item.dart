import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloyhapp/cubit/sub_categories_cubit.dart';
import 'package:cloyhapp/cubit/sub_categories_state.dart';
import 'package:cloyhapp/features/Auth/data/model/sub_categories.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    // انا احمد الحمار ههههههههههه
    context.read<SubCategoriesCubit>().getSubCategories();

    return BlocBuilder<SubCategoriesCubit, SubCategoriesState>(
      builder: (context, state) {
        if (state is SubCategoriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SubCategoriesLoaded) {
          final List<SubCategory> subCategories = state.subCategories;

          if (subCategories.isEmpty) {
            return const Center(child: Text("No subcategories found."));
          }

          return SizedBox(
            height: 60,

            // بص يا  اسماعيل
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: subCategories.length,
              itemBuilder: (context, index) {
                final item = subCategories[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            item.imageUrl ?? '',
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.broken_image,
                                    color: Colors.white, size: 24),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SubCategoriesError) {
          return Center(child: Text(state.message));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
