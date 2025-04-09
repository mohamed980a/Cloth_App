import 'package:cloyhapp/features/checkOut/presentation/view/widgets/listView.dart';
import 'package:cloyhapp/features/checkOut/presentation/view/widgets/row_total_amount.dart';
import 'package:flutter/material.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CheckOutListView(),
          ),
          TotalAmount(),
        ],
      ),
    );
  }
}
/*CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CheckOutListView()),
        SliverToBoxAdapter(child: TotalAmount())

      ],
    );

    ////
    Column(
          children: [
            Expanded(
              child: CheckOutListView(),
            ),
            PromoCode(),
            SizedBox(
              height: 15,
            ),
            TotalAmount()
          ],

          //////

        )*/
