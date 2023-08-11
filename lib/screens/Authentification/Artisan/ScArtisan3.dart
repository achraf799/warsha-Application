import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import '../../Page02.dart';
import '../../WarshaIntro/SkipButton.dart';
import 'ScArtisan2.dart';
import 'ScArtisan4.dart';

class ScArtisan3 extends StatefulWidget {
  @override
  _ScArtisan3State createState() => _ScArtisan3State();
}

class _ScArtisan3State extends State<ScArtisan3> {
  TextEditingController _pswrdController = TextEditingController();
  TextEditingController _cnfrmpswrdController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool _isAccepted = false;
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
                top: screenHeight * 0.17,
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
                top: screenHeight * 0.35,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 48,
                    child: TextField(
                      controller: _cnfrmpswrdController,
                      obscureText: _obscureText1,
                      decoration: InputDecoration(
                        hintText: 'تأكييد كلمة السر ',
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
                            _obscureText1 ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black38,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText1 = !_obscureText1;
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
                top: screenHeight * 0.43,
                left: 0,
                right: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 306,
                        child: Opacity(
                          opacity: 0.75,
                          child: Text(
                            'اوافق على شروط الاستخدام والخصوصية لإستخدام التطبيق.',
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
                      SizedBox(
                        width: 50,
                        height: 75,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            value: _isAccepted,
                            onChanged: (bool? value) {
                              setState(() {
                                _isAccepted = value ?? false;
                              });
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.63,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'متابعة',
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
                              child: ScArtisan4(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.71,
                left: 0,
                right: 0,
                child: Center(
                  child: SkipButton(
                    buttonText: 'الغاء',
                    nextPage: ScArtisan2(),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  child: LinearPercentIndicator(
                    width: screenWidth * 0.98,
                    lineHeight: screenHeight * 0.01,
                    percent: 0.5,
                    barRadius: const Radius.circular(20),
                    backgroundColor: Color(0xFFE9E5E4),
                    progressColor: Color(0xFFD56E3B),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.035,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تحديد الحساب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.25,
                top: screenHeight * 0.85,
                child: Text(
                  'كلمـــــــة الـــــسر',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF190B28),
                    fontSize: screenWidth * 0.035,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.53,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'اختيار الحرفة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.71,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تأكييد رقم/البريد',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
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

