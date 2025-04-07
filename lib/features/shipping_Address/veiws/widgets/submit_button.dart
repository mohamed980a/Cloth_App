import 'package:cloyhapp/features/payment/presentation/views/addcard_shipping_Body.dart';

import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  AddCard()), ////////////////////////////////Navigator
        );
      },
      ///////////////////////////////////////////////////////////////////////////////////
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff570091),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text(
        'SUBMIT ORDER',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
