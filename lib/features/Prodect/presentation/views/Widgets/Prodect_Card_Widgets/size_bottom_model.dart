import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Card_Widgets/size_show_model_item.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/prodect_body.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/Widgets/Prodect_Widgets/prodect_body_details.dart';
import 'package:flutter/material.dart';

import 'grid_view_item.dart';

class SizeBottomModel extends StatelessWidget {
  const SizeBottomModel({super.key});

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
                  children: [
                    const Text(
                      "Size Select",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    GridViewItem(),
                  ],
                ),
              ),
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff570091),
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
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
