import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warsha/screens/Profile/ProfileTemplate.dart';

class ProfilePrivacy extends StatelessWidget {
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
                'البيانات والخصوصية',
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
              top: screenHeight * 0.2,
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
              top: screenHeight * 0.25,
              right: screenWidth *0.04,
              child : const Icon(
                Icons.playlist_add_check,
                color: Colors.black,
                size: 45,
              ),
          ),
          Positioned(
              top: screenHeight*0.255,
              right: screenWidth*0.16,
              child: const Text(
                'شروط الإستخدام',
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
            top: screenHeight * 0.255,
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
            top: screenHeight * 0.324,
            right: screenWidth *0.05,
            child : const Icon(
              Icons.no_accounts_outlined,
              color: Colors.black,
              size: 38,
            ),
          ),
          Positioned(
              top: screenHeight*0.324,
              right: screenWidth*0.16,
              child: const Text(
                'حذف الحساب',
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
            top: screenHeight * 0.325,
            left: screenWidth * 0.1,
            child: Transform(
              transform: Matrix4.rotationZ(0 * (3.14159265359 / 180)), // Horizontal flip
              child: const Icon(
                Icons.play_circle,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),

        ],
      ),
    );
  }
}