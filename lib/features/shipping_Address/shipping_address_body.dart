import 'package:cloyhapp/features/shipping_Address/veiws/widgets/delivery_method.dart';
import 'package:cloyhapp/features/shipping_Address/veiws/widgets/payment.dart';
import 'package:cloyhapp/features/shipping_Address/veiws/widgets/shipping_main_screen.dart';
import 'package:cloyhapp/features/shipping_Address/veiws/widgets/submit_button.dart';
import 'package:cloyhapp/features/shipping_Address/veiws/widgets/total_payment.dart';
import 'package:flutter/material.dart';

class ShippingAddressBody extends StatelessWidget {
  const ShippingAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shipping address',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ShippingMainScreen(),
              SizedBox(height: 20),
              PaymentWidget(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Delivery method',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              DeliveryMethod(),
              SizedBox(
                height: 30,
              ),
              TotalPayment(),
              SizedBox(
                height: 30,
              ),
              SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
