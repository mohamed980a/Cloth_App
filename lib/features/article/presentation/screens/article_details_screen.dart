import 'package:flutter/material.dart';
import 'package:learn_chinese/core/helpers/spacing.dart';
import 'package:learn_chinese/core/theaming/styles.dart';
import 'package:learn_chinese/features/article/presentation/screens/widgets/article_details_widget.dart';
class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: ArticleDetailsWidget(image: 'image', title: 'title', description: 'description')
          ),
        )
    );
  }
}
