import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

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
                    'images/scr2.png',
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
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: Text(
                        'انشئ حسابك على ورشة ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Lalezar',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.09,
                          height: 1.5,
                          color: Color(0xFF190B28),
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
                      'وتحصل على مزايا عديدة وخدمات أثناء تصفحك للتطبيق',
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
