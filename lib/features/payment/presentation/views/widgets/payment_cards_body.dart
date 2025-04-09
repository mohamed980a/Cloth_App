import 'package:cloyhapp/features/payment/presentation/views/widgets/choose_card.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/credit_card.dart';
import 'package:flutter/material.dart';

class PaymentCardsBody extends StatefulWidget {
  const PaymentCardsBody({super.key});

  @override
  State<PaymentCardsBody> createState() => _PaymentCardsBodyState();
}

class _PaymentCardsBodyState extends State<PaymentCardsBody> {
  int selectedCardIndex = 0;
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              const Text(
                "Payment methods",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text("Your payment cards",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          ChooseCard(),
          FloatingActionButton(
            onPressed: () {
              Scaffold.of(context)
                  .showBottomSheet((BuildContext context) => CreditCardA());
            },
            backgroundColor: Colors.black,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
