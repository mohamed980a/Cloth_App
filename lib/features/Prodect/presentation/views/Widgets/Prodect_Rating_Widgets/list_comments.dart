import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Rating_Widgets/list_comments_details.dart';
import 'package:flutter/material.dart';

class ListComments extends StatelessWidget {
  const ListComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            image: DecorationImage(image: AssetImage(AppAssets.pullover)),
          ),
        ),
        ListCommentsDetails(),
      ],
    );
  }
}
