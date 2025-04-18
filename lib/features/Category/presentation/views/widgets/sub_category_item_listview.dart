import 'package:cloyhapp/cubit/all_categories_cubit.dart';
import 'package:cloyhapp/cubit/all_categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cloyhapp/core/Assets/assets_images.dart';

class SubCategoryItemListview extends StatelessWidget {
  const SubCategoryItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCategoriesCubit, AllCategoriesState>(
      builder: (context, state) {
        if (state is AllCategoriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AllCategoriesLoaded) {
          final categories = state.categories.data ?? [];

          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'Catalog');
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 19,
                    right: 19,
                    bottom: 16,
                  ),
                  child: Container(
                      width: 343,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white54,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Text(
                              category.name ?? 'No Name',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 172,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppAssets.category),
                                    fit: BoxFit.fill)),
                          )
                        ],
                      )),
                ),
              );
            },
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
