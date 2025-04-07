import 'package:cloyhapp/core/Assets/assets_images.dart';
import 'package:flutter/material.dart';

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
      Navigator.pushReplacementNamed(context, "RegisterScreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Container(
          height: 260,
          width: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.splash), fit: BoxFit.fill),
          ),
        ),
      )),
    );
  }
}
