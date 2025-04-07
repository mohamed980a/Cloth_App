import 'package:cloyhapp/features/MyOrders/presentation/views/widgets/MyOrder_body.dart';
import 'package:flutter/material.dart';

class MyorderScreen extends StatelessWidget {
  const MyorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SafeArea(
          child: Scaffold(
        body: MyorderBody(),
      )),
    ));
  }
}
