import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class ArticleItems extends StatelessWidget {
  const ArticleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("6 visual design fundamentals that UX",style: TextStyles.font14BlueBold,),
              const Spacer(),
              Image.asset("assets/images/mohamed.png",height: 100,)
            ],
          ),
          verticalSpace(8),
          Text("17 hours ago",style: font14Grey,),
          verticalSpace(8),
          Text("When I was studying visual communications design in college, I was fascinated by how...",style: font14Grey,),
        ],
      )
    );
  }
}
