import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = constraints.maxHeight;
          final screenWidth = constraints.maxWidth;

          return Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: screenHeight * 0.15,
                child: Container(
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.4,
                  child: Image.asset(
                    'images/scr1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: screenHeight * 0.61,
                child: SizedBox(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.1,
                  child: Container(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'ماهي ورشـــة ',
                          style: TextStyle(
                            fontFamily: 'Lalezar',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.09,
                            height: 1.5,
                            color: Color(0xFF190B28),
                          ),
                          children: [
                            TextSpan(
                              text: '؟',
                              style: TextStyle(
                                color: Color(0xFFD56E3B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.7,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.08,
                  child: Center(
                    child: Text(
                      'ورشة هي همزة وصل بين الحرفيين وأصحاب المشاريع\n والباحثين عن خدمات',
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.04,
                        height: 1.58,
                        color: Color(0xFF190B28),
                      ),
                      textAlign: TextAlign.center,
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
