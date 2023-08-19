import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warsha/screens/Profile/ProfileTemplate.dart';

class ProfileOperations extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return ProfileTemplate(
      bodyContent: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left:0,
            height: screenHeight*0.92,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color.fromRGBO(213, 111, 59, 73)
                  ],
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
              ),

            ),
          ),
          Positioned(
              top: screenHeight*0.12,
              right: screenWidth*0.1,
              child: const Text(
                'تعامــــلاتي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 28,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Positioned(
            top: screenHeight*0.12,
            left: screenWidth*0.1,
            child : Container(
              width: 38,
              height: 38,
              decoration: const ShapeDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.06, 0.94),
                  radius: 0,
                  colors: [Color(0xFFFB9E70), Color(0xFFD5573B)],
                ),
                shape: OvalBorder(),
              ),
              child:const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),

          Positioned(
              top: screenHeight*0.2,
              right: screenWidth*0.05,
              child: const Text(
                'ديسمبر 2022',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 21,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Positioned(
            top: screenHeight*0.265,
            right: screenWidth*0.05,
            left: screenWidth*0.05,
            child : CardOperation(),
          )
        ],
      ),
    );
  }
}

class CardOperation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.symmetric(horizontal: 14),
      decoration: ShapeDecoration(
        color: const Color(0xFFFBF5F3),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: const [
            BoxShadow(
            color: Color(0x91D56E3B),
            blurRadius: 18,
            offset: Offset(0, 0),
            spreadRadius: 7,
          )
        ],
      ),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                "images/logo01.png",
                width: 85,
                height:85,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Opacity(
              opacity: 0.50,
              child : Container(
                height: 100,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFD56E3B),
                    ),
                  ),
                ),
              ),
            ),
            const Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Icon(
                              Icons.construction,
                              size: 25,
                            ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            'ميكانيكي سيارات',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF190B28),
                              fontSize: 24,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.bold,
                            ),

                        )
                      ],
                    )
                ),


                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'OMAR.H',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF190B28),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.67,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    Text(
                        '4.6',
                        style: TextStyle(
                          color: Color(0xFFD5573B),
                          fontSize: 16,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Color(0xFFD5573B),
                    ),
                  ],
                ),




                Padding(
                    padding: EdgeInsets.only(top: 8,left: 12),
                    child: Row(
                      children: [
                        Opacity(
                          opacity: 0.50,
                          child: Text(
                            '5 أيــام',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                              height: 1.43,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Opacity(
                          opacity: 0.50,
                          child: Text(
                            '12-12-2022',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 1.67,
                            ),
                          ),
                        )
                      ],
                    )
                ),

              ],
            )
          ],
        ),
      )

    );
  }
}