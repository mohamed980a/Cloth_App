import 'package:flutter/material.dart';

import '../../../../../core/Assets/assets_images.dart';
import '../home_screen_body.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key, this.onTap});
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      elevation: 5,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.home,
            width: 20,
            height: 20,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.shop,
              width: 20,
              height: 20,
            ),
            label: 'Shop'),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.bag,
              width: 20,
              height: 20,
            ),
            label: 'Bag'),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.fav,
              width: 20,
              height: 20,
            ),
            label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets.profile,
              width: 20,
              height: 20,
            ),
            label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}

void Function(int)? onTap;
