import 'package:flutter/material.dart';

class ChooseCard extends StatefulWidget {
  ChooseCard({super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  int selectedCardIndex = 0;

  final List<Map<String, dynamic>> paymentCards = [
    {
      "cardNumber": "**** **** **** 3947",
      "cardHolder": "Jennyfer Doe",
      "expiryDate": "05/23",
      "brand": "Mastercard",
      "color": Colors.black,
    },
    {
      "cardNumber": "**** **** **** 4546",
      "cardHolder": "Jennyfer Doe",
      "expiryDate": "11/22",
      "brand": "Visa",
      "color": Colors.grey,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: paymentCards.length,
        itemBuilder: (context, index) {
          final card = paymentCards[index];
          return Card(
            color: card["color"],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.credit_card, color: Colors.white),
                      Text(card["brand"],
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(card["cardNumber"],
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Card Holder Name",
                          style: TextStyle(color: Colors.white70)),
                      Text("Expiry Date",
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(card["cardHolder"],
                          style: TextStyle(color: Colors.white)),
                      Text(card["expiryDate"],
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: selectedCardIndex == index,
                    onChanged: (bool? value) {
                      setState(() {
                        selectedCardIndex = index;
                      });
                    },
                    title: Text("Use as default payment method",
                        style: TextStyle(color: Colors.white)),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
