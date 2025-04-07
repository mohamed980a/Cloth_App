import 'package:cloyhapp/core/Utils/Widgets/btn_main.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/list_choice.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/list_view_images.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/prodect_body_details.dart';
import 'package:flutter/material.dart';

class ProdectBody extends StatelessWidget {
  const ProdectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Short dress",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
              size: 30,
              color: Color(0xff000000),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 75),
        child: ProdectBodyDetails(),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BottomSheet(
            onClosing: () {},
            builder: (context) =>
                btnMain(onPressed: () {}, text: "ADD TO CART")),
      ),
    );
  }
}
