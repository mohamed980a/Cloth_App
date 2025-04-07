import 'package:cloyhapp/core/Utils/color.dart';

import 'package:cloyhapp/features/checkOut/presentation/view/widgets/total_amount_details.dart';
import 'package:flutter/material.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TotalAmountDetails(),
      ),
    );
  }
}
