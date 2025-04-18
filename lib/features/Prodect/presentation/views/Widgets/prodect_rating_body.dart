import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Rating_Widgets/list_comments.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Rating_Widgets/rating_block.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Rating_Widgets/review&check_box.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Rating_Widgets/write_review.dart';
import 'package:flutter/material.dart';

class ProdectRatingBody extends StatelessWidget {
  const ProdectRatingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomEnd, children: [
      CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: RatingBlock()),
          SliverToBoxAdapter(child: ReviewCheckBox()),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListComments();
            }, childCount: 5),
          ),
        ],
      ),
      WriteReview(),
    ]);
  }
}
