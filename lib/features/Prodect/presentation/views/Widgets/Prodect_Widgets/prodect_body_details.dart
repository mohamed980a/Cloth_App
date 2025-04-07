import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/prodect_show_details.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/Utils/Widgets/btn_main.dart';
import 'list_choice.dart';
import 'list_view_images.dart';

class ProdectBodyDetails extends StatelessWidget {
  const ProdectBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(child: ListViewImages()),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 15,
        ),
      ),
      SliverToBoxAdapter(child: ProdectShowDetails()),
    ]);
  }
}
