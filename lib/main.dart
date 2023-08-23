import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/SplashScreen.dart';
import 'package:warsha/data/dependencies/dependencies.dart' as dep;
// import 'screens/auth_wrapper.dart'; // Import the AuthWrapper widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dep.init();

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
