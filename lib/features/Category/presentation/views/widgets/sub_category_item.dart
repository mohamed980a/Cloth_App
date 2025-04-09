// import 'package:flutter/material.dart';
//
// import '../../../../../core/Assets/assets_images.dart';
//
// class SubCategoryItem extends StatelessWidget {
//   const SubCategoryItem({
//     super.key,
//     required this.name,
//     required this.image,
//   });
//   final String name;
//   final String image;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         left: 19,
//         right: 19,
//         bottom: 16,
//       ),
//       child: Container(
//           width: 343,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: Colors.white54,
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 23),
//                 child: Text(
//                   name,
//                   style: TextStyle(fontSize: 18, color: Colors.black),
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 width: 172,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(image), fit: BoxFit.fill)),
//               )
//             ],
//           )),
//     );
//   }
// }
