import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theaming/styles.dart';
class ArticleDetailsWidget extends StatelessWidget {
  const ArticleDetailsWidget({super.key, required this.image, required this.title, required this.description});
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Image.asset(image,height: 600,),
          verticalSpace(15),
          Text(
            title,
            style: TextStyles.font20BlueBold,
          ),
          verticalSpace(10),
          Text(
            description,
            style: TextStyles.font14Black,
          ),
        ],
      ),
    );
  }
}
