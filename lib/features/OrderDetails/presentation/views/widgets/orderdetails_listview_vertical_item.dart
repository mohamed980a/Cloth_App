import 'package:cloyhapp/features/OrderDetails/presentation/views/widgets/orderdetails_listview_vertical_image.dart';
import 'package:flutter/material.dart';

class OrderdetailsListviewVerticalItem extends StatelessWidget {
  const OrderdetailsListviewVerticalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10, right: 35),
        child: Container(
          width: 343,
          height: 104,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
          ),
          child: Row(
            children: [
              OrderdetailsListviewVerticalImage(),
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pullover",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Text(
                        "Mango",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff9B9B9B)),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color:",
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff9B9B9B)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Gray",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Size:",
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff9B9B9B)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "L",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Units:",
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff9B9B9B)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Text(
                            "51\$",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
