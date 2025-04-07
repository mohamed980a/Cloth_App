import 'package:cloyhapp/features/shipping_Address/shipping_address_home.dart';
import 'package:flutter/material.dart';
import 'package:cloyhapp/core/Assets/assets_images.dart';

class ContainerShowModal extends StatelessWidget {
  const ContainerShowModal({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.pullover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 17),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14),
                  Text(
                    'Personal offer',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('mypromocode2020'),
                    ],
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('6 days remaining'),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                shippingAddressHome()), ///// navigation
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff570091),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Text(
                        'Apply',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
