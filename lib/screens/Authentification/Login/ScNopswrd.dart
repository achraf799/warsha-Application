import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import '../../Page02.dart';
import '../../WarshaIntro/SkipButton.dart';

class ScNopswrd extends StatefulWidget {
  @override
  _ScNopswrdState createState() => _ScNopswrdState();
}

class _ScNopswrdState extends State<ScNopswrd> {
  TextEditingController _pswrdController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  bool _obscureText = true;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F3),
      appBar: AppBar(
        leadingWidth: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          child: Image.asset('images/logo2.png'),
        ),
      ),
      body: LayoutBuilder(
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
              Positioned(
                left: 0,
                right: 0,
                top: screenHeight * 0.02,
                child: Container(
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.3,
                  child: Image.asset(
                    'images/frgtpswrd.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.35,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'إعادة تعيين كلمة السر',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 47.48,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.45,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: 338,
                    height: 49,
                    child: Opacity(
                      opacity: 0.75,
                      child: Text(
                        'لإعادة تعيين كلمة السر الخاصة بك يرجى ادخال البريد\n :الإلكتروني الخاص بك',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.48,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.55,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 48,
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: 'البريد الالكتروني ',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 22.48,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(22.5),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xFFE9E5E4),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),

                        suffixIcon: Icon(
                          Icons.mail,
                          color: Colors.black38,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),

              Positioned(
                top: screenHeight * 0.67,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'تأكـــــــيد',
                    fontSize: 25,
                    buttonColor: Color(0xFFD56E3B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 200),
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              //child: ScClient4(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          );
        },
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.48,
            fontFamily: 'Lalezar',
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
class SuffixIconButton extends StatefulWidget {
  final Icon icon;
  final Function onPressed;

  const SuffixIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  _SuffixIconButtonState createState() => _SuffixIconButtonState();
}

class _SuffixIconButtonState extends State<SuffixIconButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        widget.onPressed();
      },
      color: _isPressed ? Colors.black38 : Colors.transparent,
    );
  }
}

