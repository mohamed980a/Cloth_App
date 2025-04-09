import 'package:cloyhapp/core/Assets/assets_images.dart';

class orderdetails_listTile {
  final String title;
  final String subtitle;
  final String? image;

  orderdetails_listTile(
      {required this.title, required this.subtitle, this.image});
}

List<orderdetails_listTile> Orderdetails_listTile = [
  orderdetails_listTile(
      title: "Shipping Address:", subtitle: "CA 91709, United States"),
  orderdetails_listTile(
      title: "Payment method:",
      subtitle: "**** **** **** 3947",
      image: AppAssets.card),
  orderdetails_listTile(
      title: "Delivery method:", subtitle: "FedEx, 3 days, 15"),
  orderdetails_listTile(
      title: "Discount:", subtitle: "10%, Personal promo code"),
  orderdetails_listTile(title: "Total Amount::", subtitle: "133\$"),
];
