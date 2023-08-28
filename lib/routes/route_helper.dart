import 'package:get/get.dart';
import 'package:warsha/screens/Authentification/Login/ScLogin1.dart';
import 'package:warsha/screens/Authentification/register/sign_up_page1.dart';
import 'package:warsha/screens/Authentification/register/sign_up_page2.dart';
import 'package:warsha/screens/Authentification/register/sign_up_page3.dart';
import 'package:warsha/screens/Authentification/register/sign_up_page4.dart';
import 'package:warsha/screens/HomePage.dart';
import 'package:warsha/screens/Page01.dart';
import 'package:warsha/screens/Page02.dart';
import 'package:warsha/screens/SplashScreen.dart';

class RouteHelper {
  static const String splashPage = "/splach_page";
  static const String homePage = "/home_page";
  static const String page01 = "/page01";
  static const String page02 = "/page02";
  static const String scLogin1 = "/sc_login1";
  static const String signUpPage1 = "/sign_up_page1";
  static const String signUpPage2 = "/sign_up_page2";
  static const String signUpPage3 = "/sign_up_page3";
  static const String signUpPage4 = "/sign_up_page4";

  static String getSplashPage() => splashPage;
  static String getHomePage() => homePage;
  static String getPage01() => page01;
  static String getPage02() => page02;
  static String getScLogin1() => scLogin1;
  static String getSignUpPage1() => signUpPage1;
  static String getSignUpPage2() => signUpPage2;
  static String getSignUpPage3() => signUpPage3;
  static String getSignUpPage4() => signUpPage4;

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
        name: getSignUpPage1(),
        page: (() => SignUpPage1()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getSignUpPage2(),
        page: (() => SignUpPage2()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getSignUpPage3(),
        page: (() => SignUpPage3()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
    GetPage(
        name: getSignUpPage4(),
        page: (() => SignUpPage4()),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200)),
  ];
}
