import 'package:flutter/material.dart';


class ProfileTemplate extends StatelessWidget {

  final Widget bodyContent;

  ProfileTemplate({required this.bodyContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenHeight = MediaQuery
              .of(context)
              .size
              .height;
          final screenWidth = MediaQuery
              .of(context)
              .size
              .width;
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(213, 111, 59, 0),
                      Color.fromRGBO(213, 111, 59, 73)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 150,
                child : TopBar(),
              ),
              bodyContent,
              Positioned(
                bottom: screenHeight*0.02,
                left: screenWidth*0.04,
                right: screenWidth*0.04,
                child: BottomNavBar(),
              ),
            ],
          );
        }
        )
    );
    }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: ShapeDecoration(
        color: const Color(0xFFFBF5F3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(39),
        ),
      ),
      child: Stack(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child : Container(
              width: 133,
              height: 35,
              decoration: ShapeDecoration(
                color: const Color(0xFFFBF5F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x4FD56E3B),
                    blurRadius: 17,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 18),

              child : const Opacity(
                  opacity: 0.5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child:Text(
                      'مشاريعك',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
              ),
            ),
        ),

        Align(
          alignment: Alignment.centerLeft,
          child : Container(
            width: 42,
            height: 42,
            decoration: const ShapeDecoration(
              color: Color(0xFFFBF5F3),
              shape: CircleBorder(),
              shadows: [
                BoxShadow(
                  color: Color(0x7FD56E3B),
                  blurRadius: 11,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Opacity(
              opacity: 0.5,
              child :  Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child : Container(
          width: 83,
          height: 83,
          decoration: const ShapeDecoration(
            color: Color(0xFFD56E3B),
            shape: CircleBorder(),
            shadows: [
              BoxShadow(
                color: Color(0xB2D56E3B),
                blurRadius: 16,
                offset: Offset(0, 0),
                spreadRadius: 3,
              )
            ],
          ),
            child :  const Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 30,
            ),        )
        ),
        Align(
          alignment: Alignment.centerRight,
          child : Container(
            width: 133,
            height: 35,
            decoration: ShapeDecoration(
              color: const Color(0xFFFBF5F3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x4FD56E3B),
                  blurRadius: 17,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child : const Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:Text(
                    'خــدمة العمـلاء',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                )
            ),
          ),
        ),

        Align(
          alignment: Alignment.centerRight,
          child : Container(
            width: 42,
            height: 42,
            decoration: const ShapeDecoration(
              color: Color(0xFFFBF5F3),
              shape: CircleBorder(),
              shadows: [
                BoxShadow(
                  color: Color(0x7FD56E3B),
                  blurRadius: 11,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Opacity(
              opacity: 0.5,
              child :  Icon(
                Icons.settings_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),

    ]
      ),
    );

  }
}

class TopBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
         colors: [Color(0xFFF55100), Color(0xFFF68852)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
    );
  }
}


