import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/extensions.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
class ArticleTopBar extends StatelessWidget {
  const ArticleTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(40),
            IconButton(icon: Icon(CupertinoIcons.back,size: 36,), onPressed: () { context.pop(); },),
            verticalSpace(15),
            Text(
              'Article',
              style: TextStyles.font20Black.copyWith(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
        const Spacer(),
        Text(
            'Article',
            style: TextStyles.font16Black.copyWith(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.normal
            )
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
          child: const Icon(Icons.search,size: 30,),
        )
      ],
    );
  }
}
