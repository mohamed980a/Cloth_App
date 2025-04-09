import 'package:flutter/material.dart';

class ProdectCardScreen extends StatelessWidget {
  const ProdectCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            double height = MediaQuery.of(context).size.height * 0.6;
            double width = MediaQuery.of(context).size.width;

            return Container(
              height: height,
              width: width,
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                ),
              ),
            );
          },
        );
      },
      // style: ElevatedButton.styleFrom(
      //   backgroundColor: const Color(0xff570091),
      //   padding: const EdgeInsets.symmetric(vertical: 15),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(30),
      //   ),
      // ),
      child: const Text(
        'CHECK OUT',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff)),
      ),
    );
  }
}
// Scaffold(
// body: ProdectCardBody(),
// bottomSheet:  SizeBottomModel(),
// )
