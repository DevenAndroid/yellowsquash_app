import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowsquash_app/screens/HomePage.dart';
import 'package:yellowsquash_app/screens/login_screen.dart';
import '../resource/app_Assets.dart';
import 'main_home_screen.dart';


class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
       Get.offAll(const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          AppAssets.splash,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}