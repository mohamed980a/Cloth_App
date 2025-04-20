import 'package:cloyhapp/cubit/wishlist_cubit.dart';
import 'package:cloyhapp/cubit/wishlist_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_listview_vertical_container.dart';

class FavListviewVertical extends StatelessWidget {
  const FavListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        if (state is WishlistLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WishlistLoaded) {
          final wishlistItems = state.wishlist.data.wishlist;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: wishlistItems.length,
            itemBuilder: (context, index) {
              final item = wishlistItems[index];
              return FavListviewVerticalContainer(
                // brand: item.brand ?? '',
                // title: item.name ?? '',
                // color: item.color ?? '',
                // size: item.size ?? '',
                // price: item.price?.toString() ?? '',
                // rating: item.rating?.toInt() ?? 0,
                // reviews: item.reviewsCount?.toString() ?? '0',
              );
            },
          );
        } else if (state is WishlistEmpty) {
          return const Center(child: Text('Your wishlist is empty.'));
        } else if (state is WishlistError) {
          return Center(child: Text('Error: ${state.message}'));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
