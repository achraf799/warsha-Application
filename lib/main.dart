import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'screens/auth_wrapper.dart'; // Import the AuthWrapper widget

import 'screens/Page02.dart';

void main() async {
  // Initialize Firebase (required for using Firebase services)
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(WarshaApp());
}

class WarshaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.getPages,
    );
  }
}
