import 'package:flutter/material.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_listview_vertical_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubit/wishlist_cubit.dart';
import '../../../../../cubit/wishlist_state.dart';

class FavListviewVerticalContainer extends StatelessWidget {


  const FavListviewVerticalContainer({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
        builder: (context, state) {
      if (state is  WishlistLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is  WishlistLoaded) {
        final products = state.wishlist.data?.wishlist;

        if (products == null || products.isEmpty) {
          return const Center(child: Text("لا توجد منتجات حالياً"));
        }

        return SizedBox(
            height: 300,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
          final product = products[index];

          return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 390,
            height: 116,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
              ],
            ),
            child: Row(
              children: [
                const FavListviewVerticalImage(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(product.brand ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B))),
                          const SizedBox(width: 210),
                          const Icon(Icons.close,
                              color: Colors.black, size: 20),
                        ],
                      ),
                      Text(
                        product.title ?? '',
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Color:",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B))),
                          const SizedBox(width: 5),
                          Text(product.color ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.black)),
                          const SizedBox(width: 20),
                          const Text("Size:",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B))),
                          const SizedBox(width: 5),
                          Text(product .size ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // "$price\$",
                            product.price?.toString() ?? '',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 50),
                          ...List.generate(
                            product .rating?.toInt() ?? 0,
                            (index) => const Icon(Icons.star_rate_rounded,
                                color: Color(0xffFFBA49), size: 15),
                          ),
                          Text(product .reviewsCount?.toString() ?? '',
                              style: const TextStyle(
                                  fontSize: 11, color: Color(0xff9B9B9B))),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 350),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple[900],
              ),
              child: const Icon(Icons.shopping_bag_outlined,
                  color: Colors.white, size: 22),
            ),
          ),
        ],
      ),
    );
            },
            ),
        );
      } else if (state is  WishlistError) {
        return Center(child: Text("خطأ: ${state.message}"));
      }

      return const Center(child: Text("لا توجد بيانات."));
        },

    );
  }
}
