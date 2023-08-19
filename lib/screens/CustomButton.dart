import 'package:flutter/material.dart';
import 'package:warsha/utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
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
        width: Dimension.screenWidth * 0.5,
        height: Dimension.screenHeight * 0.065,
        padding: EdgeInsets.symmetric(horizontal: Dimension.height10 * 1.5),
        decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(-2, 0),
              blurRadius: 24,
              color: buttonColor,
            ),
          ],
          borderRadius: BorderRadius.circular(Dimension.height10 * 2.45),
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
