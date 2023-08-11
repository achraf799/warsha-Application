import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.fontSize,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.065,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(-2, 0),
              blurRadius: 24,
              color: buttonColor,
            ),
          ],
          borderRadius: BorderRadius.circular(24.5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Lalezar',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
              height: 1.4,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}