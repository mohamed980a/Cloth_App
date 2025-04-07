import 'package:cloyhapp/features/Catalog/presentation/views/widgets/catalog_body.dart';
import 'package:cloyhapp/features/Category/presentation/views/category_screen.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/Fav_screen.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/home_screen.dart';
import 'package:cloyhapp/features/Home/presentation/veiws/widget/bottom_navigation.dart';
import 'package:cloyhapp/features/MyProfile/presentation/views/MyProfile_Screen.dart';
import 'package:cloyhapp/features/Prodect/presentation/views/prodect_screen.dart';
import 'package:cloyhapp/features/checkOut/presentation/view/checkOut.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

int selectedIndex = 0;
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

List<Widget> screen = [
  HomeScreen(),
  CategoryScreen(),
  CheckOut(),
  FavScreen(),
  MyprofileScreen(),
];

class _MainHomeScreenState extends State<MainHomeScreen> {
  void onItemTapped(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomNavigation(
        onTap: onItemTapped,
      ),
      body: Container(
        child: screen.elementAt(selectedIndex),
      ),
    );
  }
}
