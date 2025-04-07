import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_body.dart';
import 'package:flutter/material.dart';

class OrderdetailsScreen extends StatelessWidget {
  const OrderdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: OrderdetailsBody(),
    ));
  }
}
