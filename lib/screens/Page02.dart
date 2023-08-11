import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';

import 'Authentification/Artisan/ScArtisan1.dart';
import 'Authentification/Client/ScClient1.dart';
import 'Authentification/Login/ScLogin1.dart';

class Page02 extends StatefulWidget {
  @override
  _Page02State createState() => _Page02State();
}

class _Page02State extends State<Page02> {
  int selected = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F3),
      appBar: AppBar(
        leadingWidth: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          child: Image.asset('images/logo2.png'),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = MediaQuery.of(context).size.height;
          final screenWidth = MediaQuery.of(context).size.width;

          return Stack(
            children: [
              Positioned(
                top: screenHeight * 0.07,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'من انت ؟',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenHeight * 0.07,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.17,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: screenWidth * 0.85,
                    height: screenHeight * 0.085,
                    child: Text(
                      'قم بإختيار ماهية حسابك في تطبيق ورشة (يمكننك الحصول على حساب مزدوج لاحقا)',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF190B28),
                        fontSize: screenWidth * 0.04,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.3,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
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
                                });
                              },
                              image: AssetImage('images/client1.png'),
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
                                });
                              },
                              image: AssetImage('images/artisan1.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'متابعة',
                      fontSize: 25,
                      buttonColor: (selected == 1 || selected == 2)
                          ? Color(0xFFD56E3B)
                          : Colors.grey,
                      onPressed: () {
                        if (selected == 1) {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: ScClient1(),
                                );
                              },
                            ),
                          );
                        } else if (selected == 2) {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: ScArtisan1(),
                                );
                              },
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.65,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                      width: screenWidth * 0.9,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 200),
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: ScLogin1(),
                                    );
                                  },
                                ),
                              );
                            },
                            child: Text(
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
                              fontSize: 21,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                        ],
                      )),
                ),
              ),
              Positioned(
                top: screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  child: LinearPercentIndicator(
                    width: screenWidth * 0.98,
                    lineHeight: screenHeight * 0.01,
                    percent: 0.25,
                    barRadius: const Radius.circular(20),
                    backgroundColor: Color(0xFFE9E5E4),
                    progressColor: Color(0xFFD56E3B),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.035,
                top: screenHeight * 0.85,
                child: Text(
                  'تحديد الحساب',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF190B28),
                    fontSize: screenWidth * 0.035,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.25,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'المعلومات الشخصية',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.53,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'اختيار الحرفة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.71,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تأكييد رقم/البريد',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: 157,
      height: 157,
      margin: EdgeInsets.only(right: 30, left: 30),
      decoration: ShapeDecoration(
        color: Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 5,
              color:
                  (selected == index) ? Color(0xFFD56E3B) : Colors.transparent),
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: [
          if (selected == index)
            BoxShadow(
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
            borderRadius: BorderRadius.circular(screenWidth * 0.024),
          ),
          side: BorderSide(
            color: Colors.transparent,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: image,
                width: screenWidth * 0.24,
                height: screenWidth * 0.24),
            SizedBox(height: screenWidth * 0.016),
            Text(
              text,
              style: TextStyle(
                color: (selected == index) ? Color(0xFFD56E3B) : Colors.grey,
                fontSize: screenWidth * 0.05,
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
