import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

class SuccessResult extends StatelessWidget {
  const SuccessResult({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 200,
                child: Image(
                  image: AssetImage(AppAssets.bag),
                ),
              ),
              SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Success!',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              ////////////////////////////////////////////////////////////////////////
              SizedBox(height: 12),
              ////////////////////////////////////////////////////////////////////
              Text(
                'Your order will be delivered soon.',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                'Thank you for choosing our app!',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 177),
              //////////////////////////////////////////
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff570091),
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text(
                  'CONTINUE SHOPPING',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
