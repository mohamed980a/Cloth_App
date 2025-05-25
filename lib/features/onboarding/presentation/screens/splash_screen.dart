import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}




class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    goToHomeScreen();
    super.initState();
  }

  goToHomeScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/onBoardingScreen");
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.only(bottom: 90.h,right: 12.w),
          height: 830,
          width: 470,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/Splashscreen.png"),
    fit: BoxFit.cover,
    ),
    ),
    child: Image.asset(
      'assets/images/logosplash.png',
      alignment: Alignment.center,
    )
    ),
    )
    );
  }
}