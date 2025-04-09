import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/prodect_rating_body.dart';
import 'package:flutter/material.dart';

class ProdectRatingScreen extends StatelessWidget {
  const ProdectRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rating&Reviews",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ProdectRatingBody(),
    );
  }
}
