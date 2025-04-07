import 'package:cloyhapp/features/Favorite/presentation/views/widgets/Fav_body.dart';
import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FavBody(),
    ));
  }
}
