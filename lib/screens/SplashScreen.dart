import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAndToNamed(RouteHelper.getHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF190B28), // Background color
      body: Center(
        child: Image.asset('images/logo01.png'), // warsha logo
      ),
    );
  }
}
