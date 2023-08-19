import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

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
                    'images/scr2.png',
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
                    width: Dimension.screenWidth * 0.7,
                    height: Dimension.screenHeight * 0.2,
                    child: Center(
                      child: Text(
                        'انشئ حسابك على ورشة ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Lalezar',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: Dimension.screenWidth * 0.09,
                          height: 1.5,
                          color: const Color(0xFF190B28),
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
                      'وتحصل على مزايا عديدة وخدمات أثناء تصفحك للتطبيق',
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
