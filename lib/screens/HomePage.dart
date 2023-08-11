import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warsha/screens/Page01.dart';

import 'CustomButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Image.asset(
              "images/backgroundimg1.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: screenHeight * 0.34,
            child: SizedBox(
              height: screenHeight * 0.06,
              child: Center(
                child: Text(
                  'Welcome to'.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.05,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            top: screenHeight * 0.39,
            child: SizedBox(
              height: screenHeight * 0.08,
              child: Center(
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    "images/logo01.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: screenHeight * 0.52,
            child: SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 0.12,
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.12,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'التطبيق الجزائري الأول للحرفيين\nحسب ',
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.08,
                        height: 1.4,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'الطلب',
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
            left: screenWidth * 0.1,
            top: screenHeight * 0.8,
            right: screenWidth * 0.1,
            child: Center(
              child: CustomButton(
                text: 'متابعة',
                fontSize: screenWidth * 0.06,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page01()),
                  );
                }, buttonColor: Color(0xFFD56E3B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


