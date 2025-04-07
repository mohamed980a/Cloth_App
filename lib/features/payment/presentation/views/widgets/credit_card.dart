import 'package:cloyhapp/core/Utils/Widgets/btn_main.dart';
import 'package:flutter/material.dart';

class CreditCardA extends StatelessWidget {
  const CreditCardA({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close)),
          const TextField(
            decoration: InputDecoration(
              labelText: "Name on card",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Card number",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Expire Date",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "CVV",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              const Text("Set as default payment method"),
            ],
          ),
          const SizedBox(height: 20),
          btnMain(onPressed: () {}, text: "ADD CARD")
        ],
      ),
    );
  }
}
