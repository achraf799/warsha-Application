import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/CustomButton.dart';

import '../utils/dimensions.dart';
import 'Authentification/Login/ScLogin1.dart';

class Page02 extends StatefulWidget {
  const Page02({super.key});

  @override
  _Page02State createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  int selected = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F3),
      appBar: AppBar(
          leadingWidth: Dimension.height10 * 15,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.only(left: Dimension.height10),
            child: SvgPicture.asset(
              'images/logo02.svg',
            ),
          )),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Positioned(
                top: Dimension.screenHeight * 0.07,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'من انت ؟',
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenHeight * 0.07,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.17,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: Dimension.screenWidth * 0.85,
                    height: Dimension.screenHeight * 0.085,
                    child: Text(
                      'قم بإختيار ماهية حسابك في تطبيق ورشة (يمكننك الحصول على حساب مزدوج لاحقا)',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF190B28),
                        fontSize: Dimension.screenWidth * 0.04,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.3,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: Dimension.screenHeight * 0.05),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SelectBtn(
                              text: 'عميــل',
                              index: 1,
                              selected: selected,
                              onPressed: () {
                                setState(() {
                                  selected = 1;
                                  Get.find<AuthController>().setIsClient = true;
                                });
                              },
                              image: const AssetImage('images/client1.png'),
                            ),
                          ),
                          //SizedBox(width: 0.0), // Space between the buttons
                          Expanded(
                            flex: 1,
                            child: SelectBtn(
                              text: 'حرفـــــي',
                              index: 2,
                              selected: selected,
                              onPressed: () {
                                setState(() {
                                  selected = 2;
                                  Get.find<AuthController>().setIsClient =
                                      false;
                                });
                              },
                              image: const AssetImage('images/artisan1.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'متابعة',
                      fontSize: Dimension.height10 * 2.5,
                      buttonColor: (selected == 1 || selected == 2)
                          ? const Color(0xFFD56E3B)
                          : Colors.grey,
                      onPressed: () {
                        if (selected != 0) {
                          Get.toNamed(RouteHelper.getSignUpPage1());
                        }
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.65,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                      width: Dimension.screenWidth,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.toNamed(RouteHelper.getScLogin1());
                            },
                            child: const Text(
                              ' من هنا',
                              style: TextStyle(
                                color: Color(0xFFD56E3B),
                                fontSize: 21,
                                fontFamily: 'Lalezar',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            'لديك حساب بالفعل؟ قم بتسجيل دخولك',
                            style: TextStyle(
                              color: Color(0xFF190B28),
                              fontSize: Dimension.height10 * 2.1,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: Dimension.screenWidth,
                  child: LinearPercentIndicator(
                    width: Dimension.screenWidth * 0.98,
                    lineHeight: Dimension.screenHeight * 0.01,
                    percent: 0.25,
                    barRadius: const Radius.circular(20),
                    backgroundColor: const Color(0xFFE9E5E4),
                    progressColor: const Color(0xFFD56E3B),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.035,
                top: Dimension.screenHeight * 0.85,
                child: Text(
                  'تحديد الحساب',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF190B28),
                    fontSize: Dimension.screenWidth * 0.035,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.25,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'المعلومات الشخصية',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.53,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'اختيار الحرفة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.71,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تأكييد رقم/البريد',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SelectBtn extends StatelessWidget {
  final String text;
  final int index;
  final int selected;
  final Function() onPressed;
  final ImageProvider image;

  const SelectBtn({
    required this.text,
    required this.index,
    required this.selected,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.height10 * 15.7,
      height: Dimension.height10 * 15.7,
      margin: EdgeInsets.only(
          right: Dimension.height10 * 3, left: Dimension.height10 * 3),
      decoration: ShapeDecoration(
        color: const Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 5,
              color: (selected == index)
                  ? const Color(0xFFD56E3B)
                  : Colors.transparent),
          borderRadius: BorderRadius.circular(Dimension.height10 * 3.2),
        ),
        shadows: [
          if (selected == index)
            const BoxShadow(
              color: Color(0xB2D56E3B),
              blurRadius: 24,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
        ],
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimension.screenWidth * 0.024),
          ),
          side: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: image,
                width: Dimension.screenWidth * 0.24,
                height: Dimension.screenWidth * 0.24),
            SizedBox(height: Dimension.screenWidth * 0.016),
            Text(
              text,
              style: TextStyle(
                color:
                    (selected == index) ? const Color(0xFFD56E3B) : Colors.grey,
                fontSize: Dimension.screenWidth * 0.05,
                fontFamily: 'Lalezar',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
