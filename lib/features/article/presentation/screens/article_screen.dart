import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/extensions.dart';
import 'package:learn_chinese/core/routing/routes.dart';
import 'package:learn_chinese/features/article/presentation/screens/widgets/article_items.dart';
import 'package:learn_chinese/features/article/presentation/screens/widgets/article_top_bar.dart';
import 'package:learn_chinese/features/home/presentation/screens/widgets/home_top_bar.dart';
class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArticleTopBar(),
              GestureDetector(
                  onTap:() {
                    context.pushNamed(Routes.articleDetailsScreen);
                  },
                  child: ArticleItems()),
            ],
          ),
        ),
      ),
    );
  }
}
