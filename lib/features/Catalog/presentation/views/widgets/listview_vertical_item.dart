import 'package:cloyhapp/core/repo/repo.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/widgets/listview_vertical_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubit/get_new_products_cubit.dart';
import '../../../../../cubit/getproductscategory_cubit.dart';
import '../../../../Prodect/presentation/views/prodect_screen.dart';

class ListviewVerticalItem extends StatelessWidget {
  const ListviewVerticalItem({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetproductscategoryCubit, GetproductscategoryState>(
        builder: (context, state) {
      if (state is GetproductscategoryLoading) return Center(child: CircularProgressIndicator());
      if (state is GetproductscategoryLoaded) {
        return ListView.builder(
            itemCount: state.products.length ?? 0,
            itemBuilder: (_, i) => Padding(
      padding: EdgeInsets.only(bottom: 17, right: 10),
      child: Container(
        width: 343,
        height: 114,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
        ),
        child: Row(
          children: [
            ListviewVerticalImage(),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Pullover",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Text(
                    "Mango",
                    style: TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      ...List.generate(
                        4,
                        (index) => const Icon(Icons.star_rate_rounded,
                            color: Color(0xffFFBA49), size: 20),
                      ),
                      const SizedBox(width: 5),
                      const Text("(3)",
                          style: TextStyle(
                              fontSize: 11, color: Color(0xff9B9B9B))),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$51",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[100]),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProdectScreen()));
                                },
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff9B9B9B),
                                  size: 24,
                                ))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
        );
      } else if (state is GetproductscategoryError) {
        return Center(child: Text(state.message));
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
