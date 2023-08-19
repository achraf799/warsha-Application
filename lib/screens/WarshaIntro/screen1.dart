import 'package:flutter/material.dart';
import 'package:warsha/utils/dimensions.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: Dimension.screenHeight * 0.1,
                child: SizedBox(
                  height: Dimension.screenHeight * 0.4,
                  width: Dimension.screenWidth * 0.4,
                  child: Image.asset(
                    'images/scr1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: Dimension.screenHeight * 0.61,
                child: SizedBox(
                  width: Dimension.screenWidth * 0.45,
                  height: Dimension.screenHeight * 0.1,
                  child: SizedBox(
                    width: Dimension.screenWidth * 0.6,
                    height: Dimension.screenHeight * 0.2,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'ماهي ورشـــة ',
                          style: TextStyle(
                            fontFamily: 'Lalezar',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: Dimension.screenWidth * 0.09,
                            height: 1.5,
                            color: const Color(0xFF190B28),
                          ),
                          children: const [
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
                top: Dimension.screenHeight * 0.7,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: Dimension.screenWidth * 0.8,
                  height: Dimension.screenHeight * 0.08,
                  child: Center(
                    child: Text(
                      'ورشة هي همزة وصل بين الحرفيين وأصحاب المشاريع\n والباحثين عن خدمات',
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: Dimension.screenWidth * 0.04,
                        height: 1.58,
                        color: const Color(0xFF190B28),
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
