import 'package:cloyhapp/features/payment/presentation/views/adding_shipping_address_Body.dart';

import 'package:flutter/material.dart';

import 'container_widget_shipping.dart';

class ContainersShippingAddress extends StatelessWidget {
  const ContainersShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWidget(),
        //////////////////
        SizedBox(
          height: 20,
        ),
        /////
        ContainerWidget(),
        SizedBox(
          height: 15,
        ),
        //////////
        ContainerWidget(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddingShippingAddressBody(),
                      ));
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                iconSize: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}
