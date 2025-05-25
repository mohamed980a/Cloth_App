import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mohamed',
              style: TextStyles.font20BlueBold
            ),
            verticalSpace(5),
            Text(
              'Welcome back to your learning journey',
              style: TextStyles.font14Black.copyWith(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.normal
              )
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(Icons.notifications_outlined,size: 36,),
        )
      ],
    );
  }
}
