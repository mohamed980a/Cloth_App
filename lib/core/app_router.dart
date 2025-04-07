import 'package:cloyhapp/features/Auth/presentation/views/forget_password.dart';
import 'package:cloyhapp/features/Auth/presentation/views/login_screen.dart';
import 'package:cloyhapp/features/Auth/presentation/views/register_screen.dart';
import 'package:cloyhapp/features/Catalog/presentation/views/catalog_screen.dart';
import 'package:cloyhapp/features/Category/presentation/views/category_screen.dart';
import 'package:cloyhapp/features/Favorite/presentation/views/Fav_screen.dart';
import 'package:cloyhapp/features/Home/presentation/main_home_screen.dart';
import 'package:cloyhapp/features/MyOrders/presentation/views/MyOrder_screen.dart';
import 'package:cloyhapp/features/MyProfile/presentation/views/MyProfile_Screen.dart';
import 'package:cloyhapp/features/OrderDetails/presentation/views/orderdetails_screen.dart';
import 'package:cloyhapp/features/settings/presentation/views/settings_screen.dart';
import 'package:cloyhapp/features/shipping_Address/shipping_address_home.dart';
import 'package:flutter/material.dart';

import '../features/Category/presentation/views/widgets/search_categort_body.dart';
import '../features/Splash/presentation/veiws/splash_screen.dart';
import '../features/checkOut/presentation/view/checkOut.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case 'RegisterScreen':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case 'LoginScreen':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'ForgetScreen':
        return MaterialPageRoute(builder: (_) => ForgetPassword());
      case 'HomeScreen':
        return MaterialPageRoute(builder: (_) => MainHomeScreen());
      case 'CateggoryScreen':
        return MaterialPageRoute(builder: (_) => CategoryScreen());
      case 'SearchCategortBody':
        return MaterialPageRoute(builder: (_) => SearchCategortBody());
      case 'CheckOut':
        return MaterialPageRoute(builder: (_) => CheckOut());
      case 'ShippingAddressHome':
        return MaterialPageRoute(builder: (_) => shippingAddressHome());
      case 'Favorite':
        return MaterialPageRoute(builder: (_) => FavScreen());
      case 'MyProfile':
        return MaterialPageRoute(builder: (_) => MyprofileScreen());
      case 'OrderDetails':
        return MaterialPageRoute(builder: (_) => OrderdetailsScreen());
      case 'Settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case 'MyOrders':
        return MaterialPageRoute(builder: (_) => MyorderScreen());
      case 'Catalog':
        return MaterialPageRoute(builder: (_) => CatalogScreen());
      // case 'detailsScreen':return MaterialPageRoute(builder: (_)=>DetailsScreen());
    }
  }
}
