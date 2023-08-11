import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Page02.dart';

class SkipButton extends StatelessWidget {
  final String buttonText;
  final Widget nextPage;

  const SkipButton({
    required this.buttonText,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {




        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 200),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: nextPage,
              );
            },
          ),
        );



        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => nextPage),
        // );
      },
      style: TextButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontFamily: 'Lalezar',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          fontSize: MediaQuery.of(context).size.width * 0.06,
          height: 1.5,
          color: Colors.black87,
        ),
      ),
    );
  }
}