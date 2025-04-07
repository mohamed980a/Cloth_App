import 'package:cloyhapp/features/payment/presentation/views/widgets/SuccessResult.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_address.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_city.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_code.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_country.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_fullName.dart';
import 'package:cloyhapp/features/payment/presentation/views/widgets/adding_shipping_state/province.dart';
import 'package:flutter/material.dart';

class AddingShippingAddressBody extends StatelessWidget {
  const AddingShippingAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adding Shipping Address"),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              addFullName(),
              SizedBox(height: 15),
              AddAddress(),
              SizedBox(height: 15),
              AddCity(),
              SizedBox(height: 15),
              AddState(),
              SizedBox(height: 15),
              AddCode(),
              SizedBox(height: 15),
              AddCountry(),
              SizedBox(height: 20),
              /////////////////////////////////////////////////////////////////////
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff570091),
                  /////
                  minimumSize: Size(double.infinity, 50),
                  foregroundColor: Colors.white,

                  ///
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessResult(),
                        ));
                  },
                  child: Text(
                    'SAVE ADDRESS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
