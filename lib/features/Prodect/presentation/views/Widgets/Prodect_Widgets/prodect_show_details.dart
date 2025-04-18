import 'package:cloyhapp/core/Utils/color.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/listView.builder_New.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/list_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Home/presentation/logic/detalis_product_cubit.dart';
import '../../../../../Home/presentation/logic/detalis_product_state.dart';
//
// import '../../../../../Home/presentation/logic/detalis_product_cubit.dart';
// import '../../../../../Home/presentation/logic/detalis_product_state.dart';
//
// class ProdectShowDetails extends StatelessWidget {
//   const ProdectShowDetails({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
//         builder: (context, state) {
//           if (state is ProductDetailsLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is ProductDetailsLoaded) {
//             return  SizedBox(
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     ListChoice(),
//                     ListTile(
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "H&M",
//                             style: TextStyle(
//                                 fontSize: 30, fontWeight: FontWeight.w700),
//                           ),
//                           Text(
//
//                             // "125.99 \$",
//                             style: TextStyle(
//                                 fontSize: 30, fontWeight: FontWeight.w300),
//                           ),
//                         ],
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Short black dress",
//                             style: TextStyle(fontSize: 15),
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: StaticColors.star_color,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: StaticColors.star_color,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: StaticColors.star_color,
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: StaticColors.star_color,
//                               ),
//                               Icon(
//                                 Icons.star_border_purple500_outlined,
//                                 color: StaticColors.star_color,
//                               ),
//                               Text(" (10)"),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
//                         style: TextStyle(fontSize: 15),
//                       ),
//                     ),
//                     ListTile(
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Shipping info",
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           TextButton(
//                               onPressed: () {},
//                               child: Icon(Icons.navigate_next)),
//                         ],
//                       ),
//                     ),
//                     ListTile(
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Support",
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           TextButton(
//                               onPressed: () {},
//                               child: Icon(Icons.navigate_next)),
//                         ],
//                       ),
//                     ),
//                     ListTile(
//                       title: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "You can also like this",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w900),
//                           ),
//                           Text(
//                             " 12 items",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                     ListViewNewHorizontal(),
//                   ],
//                 ));
//           } else if (state is ProductDetailsError) {
//             return Center(child: Text(state.message));
//           }
//           return const SizedBox();
//         },
//
//     );
//   }
// }
//
//
//
//

class ProdectShowDetails extends StatelessWidget {
  const ProdectShowDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        if (state is ProductDetailsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductDetailsLoaded) {
          final product = state.product;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListChoice(),

                /// Title + Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name ?? "No Name",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${product.price?.toStringAsFixed(2) ?? "--"}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                /// Short Description
                Text(
                  product.description ?? "No description provided.",
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),

                const SizedBox(height: 12),

                /// Rating Row
                Row(
                  children: [
                    ...List.generate(
                        4,
                        (index) =>
                            Icon(Icons.star, color: StaticColors.star_color)),
                    Icon(Icons.star_border, color: StaticColors.star_color),
                    const SizedBox(width: 8),
                    const Text("(10)", style: TextStyle(fontSize: 14)),
                  ],
                ),

                const SizedBox(height: 20),

                /// Long Description
                Text(
                  product.description ??
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit ante ut lacus consequat...",
                  style: const TextStyle(fontSize: 15),
                ),

                const SizedBox(height: 20),

                /// Shipping Info
                _buildInfoTile(title: "Shipping Info"),

                /// Support
                _buildInfoTile(title: "Support"),

                const SizedBox(height: 20),

                /// Related Items Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "You may also like",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "12 items",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const ListViewNewHorizontal(),
              ],
            ),
          );
        } else if (state is ProductDetailsError) {
          return Center(child: Text(state.message));
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildInfoTile({required String title}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 18)),
          const Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
