import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderinformation_details.dart';
import 'package:flutter/material.dart';

import 'orderdetails_listTile.dart';

class OrderinformationListview extends StatelessWidget {
  const OrderinformationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 348,
        height: 240,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: Orderdetails_listTile.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return OrderinformationDetails(
                      title: Orderdetails_listTile[index].title,
                      subtitle: Orderdetails_listTile[index].subtitle,
                      image: Orderdetails_listTile[index].image,
                    );
                  },
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 1),
                        ),
                        child: Text(
                          "Reorder",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 150,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple[900],
                        ),
                        child: Text(
                          "Leave feedback",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
