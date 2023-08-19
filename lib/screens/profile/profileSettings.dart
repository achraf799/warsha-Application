import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warsha/screens/Profile/ProfileTemplate.dart';

class ProfileSettings extends StatelessWidget{
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
                'معلومات الحساب',
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
              child : Column(
                children: [
                  ClipOval(
                      child: Image.asset(
                        "images/Capture0.png",
                        width: 85,
                        height:85,
                        fit: BoxFit.cover,
                      ),
                  ),
                  const Text(
                    'الإسم الأول',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust as needed
                      filled: true,
                      fillColor: Colors.transparent, // Background color
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    )
                  ),
                  const Text(
                    'الإسم الأخير',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust as needed
                        filled: true,
                        fillColor: Colors.transparent, // Background color
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      )
                  ),
                  const Text(
                    'الجنس',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust as needed
                        filled: true,
                        fillColor: Colors.transparent, // Background color
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      )
                  ),
                  const Text(
                    'تاريخ الميلاد',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust as needed
                        filled: true,
                        fillColor: Colors.transparent, // Background color
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      )
                  ),
                  const Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 22,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // Adjust as needed
                        filled: true,
                        fillColor: Colors.transparent, // Background color
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.50, color: Color(0xFFD56E3B)),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      )
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    icon: Icon(Icons.star, color: Colors.white), // Icon widget
                    label: Text(
                      'Click Me', // Button text
                      style: TextStyle(color: Colors.white),
                    ),
                  )

                ],
              )
          )
        ],
      ),
    );
  }
}