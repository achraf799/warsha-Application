import 'package:get/get.dart';
import 'package:warsha/screens/Authentification/Artisan/ScArtisan1.dart';
import 'package:warsha/screens/Authentification/Artisan/ScArtisan2.dart';
import 'package:warsha/screens/Authentification/Artisan/ScArtisan3.dart';
import 'package:warsha/screens/Authentification/Artisan/ScArtisan4.dart';
import 'package:warsha/screens/Authentification/Client/ScClient1.dart';
import 'package:warsha/screens/Authentification/Client/ScClient2.dart';
import 'package:warsha/screens/Authentification/Client/ScClient3.dart';
import 'package:warsha/screens/Authentification/Login/ScLogin1.dart';
import 'package:warsha/screens/HomePage.dart';
import 'package:warsha/screens/Page01.dart';
import 'package:warsha/screens/Page02.dart';
import 'package:warsha/screens/SplashScreen.dart';

import '../screens/Authentification/Client/ScClient4.dart';

class RouteHelper {
  static const String splashPage = "/splach_page";
  static const String homePage = "/home_page";
  static const String page01 = "/page01";
  static const String page02 = "/page02";
  static const String scLogin1 = "/sc_login1";
  static const String scArtisan1 = "/sc_artisan1";
  static const String scArtisan2 = "/sc_artisan2";
  static const String scArtisan3 = "/sc_artisan3";
  static const String scArtisan4 = "/sc_artisan4";
  static const String scClient1 = "/sc_client1";
  static const String scClient2 = "/sc_client2";
  static const String scClient3 = "/sc_client3";
  static const String scClient4 = "/sc_client4";

  static String getSplashPage() => splashPage;
  static String getHomePage() => homePage;
  static String getPage01() => page01;
  static String getPage02() => page02;
  static String getScLogin1() => scLogin1;
  static String getScArtisan1() => scArtisan1;
  static String getScArtisan2() => scArtisan2;
  static String getScArtisan3() => scArtisan3;
  static String getScArtisan4() => scArtisan4;
  static String getScClient1() => scClient1;
  static String getScClient2() => scClient2;
  static String getScClient3() => scClient3;
  static String getScClient4() => scClient4;

  static List<GetPage> getPages = [
    GetPage(name: getSplashPage(), page: (() => const SplashScreen())),
    GetPage(name: getHomePage(), page: (() => const HomePage())),
    GetPage(name: getPage01(), page: (() => Page01())),
    GetPage(
        name: getPage02(),
        page: (() => Page02()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScLogin1(),
        page: (() => ScLogin1()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScArtisan1(),
        page: (() => ScArtisan1()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScArtisan2(),
        page: (() => ScArtisan2()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScArtisan3(),
        page: (() => ScArtisan3()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScArtisan4(),
        page: (() => ScArtisan4()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScClient1(),
        page: (() => ScClient1()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScClient2(),
        page: (() => ScClient2()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScClient3(),
        page: (() => ScClient3()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getScClient4(),
        page: (() => ScClient4()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
  ];
}
