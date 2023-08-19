import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warsha/screens/Profile/ProfileTemplate.dart';

class ProfileClientView extends StatelessWidget{
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
            height: screenHeight*0.62,
            child: Container(
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x7FD56E3B),
                    blurRadius: 43,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color.fromRGBO(213, 111, 59, 73)
                  ],
                ),
              ),
            ),
          ),


          Positioned(
              top: screenHeight*0.118,
              right: screenWidth*0.374,
              left: screenWidth*0.374,
              bottom: screenHeight*0.752,
              child: ClipOval(
                child: Image.asset(
                  "images/Capture0.png",
                  width: 85,
                  height:85,
                  fit: BoxFit.cover,
                ),
              ),
          ),
          Positioned(
            top: screenHeight*0.25,
            left: screenWidth*0.31,
            child : const Row(
              children: [
                Text(
                  'USER_N',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Opacity(
                  opacity: 0.50,
                  child: Text(
                    'عميل',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
           Positioned(
              top: screenHeight*0.295,
              right: screenWidth*0.48,
              left: screenWidth*0.45,
              child: const Text(
                '3.5',
                style: TextStyle(
                  color: Color(0xFFD5573B),
                  fontSize: 18,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              )
          ),
          Positioned(
            top: screenHeight*0.297,
            right: screenWidth*0.425,
            child: const Icon(
              Icons.star,
              color: Color(0xFFD5573B),
              size: 23,
            ),
          ),
          Positioned(
            top: screenHeight*0.32,
            right: screenWidth*0.32,
            left: screenWidth*0.32,
            child: const Opacity(
              opacity: 0.75,
              child: Text(
                '+213 5XXXXXXX',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ),



          Positioned(
              top: screenHeight*0.393,
              right : screenWidth*0.26,
              child :const Text(
                  'اعدادات الحساب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF190B28),
                    fontSize: 28,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.bold,
                  ),

              ) ,

          ),
          Positioned(
              top: screenHeight * 0.46,
              right: screenWidth *0.04,
              left: screenWidth*0.04,
              child : Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              )
          ),
          Positioned(
            top: screenHeight * 0.476,
            right: screenWidth *0.04,
            child : const Icon(
              Icons.account_circle,
              color: Colors.black,
              size: 38,
            ),
          ),
          Positioned(
              top: screenHeight*0.475,
              right: screenWidth*0.16,
              child: const Text(
                'معلومات الحساب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 23,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Positioned(
            top: screenHeight * 0.48,
            left: screenWidth * 0.1,
            child: Transform(
              transform: Matrix4.rotationZ(0 * (3.14159265359 / 180)), // Horizontal flip
              child: const Icon(
                Icons.play_circle,
                color: Colors.black,
                size: 33,
              ),
            ),
          ),


          Positioned(
            top: screenHeight * 0.538,
            right: screenWidth *0.04,
            child : const Icon(
              Icons.shopping_bag,
              color: Colors.black,
              size: 38,
            ),
          ),
          Positioned(
              top: screenHeight*0.547,
              right: screenWidth*0.16,
              child: const Text(
                'تعـــامـــلاتي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 23,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Positioned(
            top: screenHeight * 0.547,
            left: screenWidth * 0.1,
            child: Transform(
              transform: Matrix4.rotationZ(0 * (3.14159265359 / 180)), // Horizontal flip
              child: const Icon(
                Icons.play_circle,
                color: Colors.black,
                size: 33,
              ),
            ),
          ),


          Positioned(
              top: screenHeight * 0.6,
              right: screenWidth *0.04,
              left: screenWidth*0.04,
              child : Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              )
          ),


          Positioned(
            top: screenHeight * 0.62,
            right: screenWidth *0.04,
            child : const Icon(
              Icons.privacy_tip,
              color: Colors.black,
              size: 38,
            ),
          ),
          Positioned(
              top: screenHeight*0.624,
              right: screenWidth*0.16,
              child: const Text(
                'البيانات والخصوصية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 23,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Positioned(
            top: screenHeight * 0.625,
            left: screenWidth * 0.1,
            child: Transform(
              transform: Matrix4.rotationZ(0 * (3.14159265359 / 180)), // Horizontal flip
              child: const Icon(
                Icons.play_circle,
                color: Colors.black,
                size: 33,
              ),
            ),
          ),


          Positioned(
            top: screenHeight * 0.685,
            right: screenWidth *0.04,
            child : const Icon(
              Icons.language,
              color: Colors.black,
              size: 38,
            ),
          ),
          Positioned(
              top: screenHeight*0.685,
              right: screenWidth*0.16,
              child: const Text(
                'خيارات اللغة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 23,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          Positioned(
            top: screenHeight * 0.689,
            left: screenWidth * 0.1,
            child: Transform(
              transform: Matrix4.rotationZ(0 * (3.14159265359 / 180)), // Horizontal flip
              child: const Icon(
                Icons.play_circle,
                color: Colors.black,
                size: 33,
              ),
            ),
          ),


          Positioned(
              top: screenHeight * 0.75,
              right: screenWidth *0.04,
              left: screenWidth*0.04,
              child : Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              )
          ),


          Positioned(
            top: screenHeight * 0.767,
            right: screenWidth *0.04,
            child : const Icon(
              Icons.logout,
              color: Colors.black,
              size: 37,
            ),
          ),
          Positioned(
              top: screenHeight*0.767,
              right: screenWidth*0.16,
              child: const Text(
                'تسجيل الخروج',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: 23,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.bold,
                ),
              )
          ),

        ],
      ),
    );
  }
}