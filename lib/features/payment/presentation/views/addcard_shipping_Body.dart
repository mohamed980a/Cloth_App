import 'package:cloyhapp/features/payment/presentation/views/widgets/containers_Screen_shipping.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping Address'),
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [ContainersShippingAddress()],
          ),
        ),
      ),
    );
  }
}
