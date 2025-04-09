// import 'package:cloyhapp/core/Assets/assets_images.dart';
// import 'package:cloyhapp/features/Auth/data/model/all_categories/products.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../../cubit/get_all_products_on_category_cubit.dart';
//
// class ListViewNewItems extends StatelessWidget {
//   const ListViewNewItems({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProductCubit, ProductState>(
//       builder: (context, state) {
//         if (state is ProductLoading) {
//           return Center(child: CircularProgressIndicator());
//         } else if (state is ProductLoaded) {
//           return ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: state.products.length,
//             itemBuilder: (context, index) {
//               final product = state.products[index];
//               return Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 184,
//                       width: 144,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         image: DecorationImage(
//                           image: AssetImage("${product.data!.imgCover}"),
//                           fit: BoxFit.fill,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                     ),
//                     SizedBox(height: 3),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Icon(Icons.star_border, color: Colors.grey, size: 20),
//                         Icon(Icons.star_border, color: Colors.grey, size: 20),
//                         Icon(Icons.star_border, color: Colors.grey, size: 20),
//                         Icon(Icons.star_border, color: Colors.grey, size: 20),
//                         Icon(Icons.star_border, color: Colors.grey, size: 20),
//                         Text(
//                           '"${product.data!.ratingsQuantity}"',
//                           style: TextStyle(color: Colors.grey),
//                         )
//                       ],
//                     ),
//                     ////////////////////////////////////////////////////////////
//
//                     /////////////////////////////////////////////////////////////
//                     SizedBox(height: 3),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 3,
//                           ),
//                           Text(
//                             // 'Mango Boy',
//                             "${product.data!.colors}",
//                             style: TextStyle(fontSize: 11, color: Colors.grey),
//                           ),
//                           // دي يا اميره
//                           Text(
//                             "${product.data!.name}",
//                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           /////////////////////////////////////////////////////
//                           SizedBox(height: 3),
//                           Text(
//                             "${product.data!.price}",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         } else if (state is ProductError) {
//           return Center(child: Text("Error: ${state.message}"));
//         }
//         return Center(child: Text("No products available."));
//       },
//     );
//   }
// }
//
//
