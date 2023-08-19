import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warsha/utils/dimensions.dart';

class SkipButton extends StatelessWidget {
  final String buttonText;
  final String nextPage;

  const SkipButton({
    super.key,
    required this.buttonText,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.toNamed(nextPage);

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => nextPage),
        // );
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontFamily: 'Lalezar',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: Dimension.screenWidth * 0.06,
          height: 1.5,
          color: Colors.black87,
        ),
      ),
    );
  }
}
