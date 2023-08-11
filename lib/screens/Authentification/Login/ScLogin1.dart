import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import '../../Page02.dart';
import '../../WarshaIntro/SkipButton.dart';
import 'ScNopswrd.dart';

class ScLogin1 extends StatefulWidget {
  @override
  _ScLogin1State createState() => _ScLogin1State();
}

class _ScLogin1State extends State<ScLogin1> {
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
          final screenHeight = MediaQuery.of(context).size.height;
          final screenWidth = MediaQuery.of(context).size.width;

          return Stack(
            children: [
              Positioned(
                top: screenHeight * 0.07,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'قم بملئ معلوماتك الشخصية',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 30.48,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.25,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: 338,
                    height: 49,
                    child: Opacity(
                      opacity: 0.80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              'املأ المعلومات باللغة الفرنسية حتى لا تحدث أيّة مشاكل في مرحلة التسجيل',
                              style: TextStyle(
                                color: Color(0xFF190B28),
                                fontSize: 16,
                                fontFamily: 'Lalezar',
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0, top: 0),
                            child: Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.25,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 48,
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: 'رقم الهاتف ',
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
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),

                        suffixIcon: Icon(
                          Icons.phone_enabled,
                          color: Colors.black38,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.35,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 48,
                    child: TextField(
                      controller: _pswrdController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: 'كلمـــة السر ',
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
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        prefixIcon: SuffixIconButton(
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black38,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.black38,
                        ),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),

              Positioned(
                top: screenHeight * 0.6,
                left: 0,
                right: 0,child: Opacity(
          opacity: 0.8,
                child: Center(
                  child: SizedBox(
                      width: screenWidth * 0.9,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextButton(
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
                                          child: Page02(),
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  ' من هنا',
                                  style: TextStyle(
                                    color: Color(0xFFD56E3B),
                                    fontSize: 21,
                                    fontFamily: 'Lalezar',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                'لديك حساب بالفعل؟ قم بتسجيل دخولك',
                                style: TextStyle(
                                  color: Color(0xFF190B28),
                                  fontSize: 21,
                                  fontFamily: 'Lalezar',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                            ],
                          ),
                          TextButton(
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
                                      child: ScNopswrd(),
                                    );
                                  },
                                ),
                              );
                            },
                            child:Text(
                              'نسيت كلمة السر؟',
                              style: TextStyle(
                                color: Color(0xFFD56E3B),
                                fontSize: 21,
                                fontFamily: 'Lalezar',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ),
                        ],
                      )
                  ),
                ),
              ),
              ),

              Positioned(
                top: screenHeight * 0.5,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'تسجيل الدخول',
                    fontSize: 25,
                    buttonColor: Color(0xFFD56E3B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 200),
                          pageBuilder: (BuildContext context, Animation<double> animation,
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
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
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

