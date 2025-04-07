import 'package:cloyhapp/features/checkOut/presentation/view/widgets/PopUpMenue.dart';
import 'package:flutter/material.dart';
import 'package:cloyhapp/core/Assets/assets_images.dart';

class CheckOutListViewItems extends StatelessWidget {
  const CheckOutListViewItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
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
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.pullover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pullover',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('Color: black'),
                      SizedBox(width: 15),
                      Text('Size: L')
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                          color: Colors.black,
                          iconSize: 30,
                        ),
                      ),
                      SizedBox(width: 18),
                      Text(
                        '4',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 18),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ///////////////////////////////////////////////////////////////////////////
                  PropUpMenueWidget(),
///////////////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(height: 45),
                  Text(
                    '\$50',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
