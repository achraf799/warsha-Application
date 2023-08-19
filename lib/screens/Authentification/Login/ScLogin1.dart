import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import 'package:warsha/utils/dimensions.dart';
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
      backgroundColor: const Color(0xFFFBF5F3),
      appBar: AppBar(
          leadingWidth: Dimension.height10 * 15,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
              margin: EdgeInsets.only(left: Dimension.height10),
              child: SvgPicture.asset(
                'images/logo02.svg',
              ))),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Positioned(
                top: Dimension.screenHeight * 0.07,
                left: 0,
                right: 0,
                child: const Center(
                  child: Text(
                    'تسجيل الدخول',
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
                top: Dimension.screenHeight * 0.15,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: Dimension.height10 * 31.3,
                    height: Dimension.height10 * 5.4,
                    child: Opacity(
                      opacity: 0.80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "مرحبا بك مجددا في ورشة لبدأ استخدام حسابك ادخل المعلومات التالية :",
                              style: TextStyle(
                                color: const Color(0xFF190B28),
                                fontSize: Dimension.height10 * 1.6,
                                fontFamily: 'Lalezar',
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.25,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 34,
                    height: Dimension.height10 * 4.8,
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: 'رقم الهاتف ',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: Dimension.height10 * 2.248,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.height10 * 2.25),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFE9E5E4),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: Dimension.height10,
                            horizontal: Dimension.height10),
                        suffixIcon: const Icon(
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
                top: Dimension.screenHeight * 0.35,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 34,
                    height: Dimension.height10 * 4.8,
                    child: TextField(
                      controller: _pswrdController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: 'كلمـــة السر ',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: Dimension.height10 * 2.248,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimension.height10 * 2.25),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFE9E5E4),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: Dimension.height10,
                            horizontal: Dimension.height10),
                        prefixIcon: SuffixIconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black38,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        suffixIcon: const Icon(
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
                top: Dimension.screenHeight * 0.6,
                left: 0,
                right: 0,
                child: Opacity(
                  opacity: 0.8,
                  child: Center(
                    child: SizedBox(
                        width: Dimension.screenWidth * 1.2,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 200),
                                        pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: const Page02(),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
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
                                  'ليس لديك حساب؟ قم بإنشاء حسابك ',
                                  style: TextStyle(
                                    color: const Color(0xFF190B28),
                                    fontSize: Dimension.height10 * 2.1,
                                    fontFamily: 'Lalezar',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 200),
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
                              child: const Text(
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
                        )),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.5,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'تسجيل الدخول',
                    fontSize: Dimension.height10 * 2.5,
                    buttonColor: const Color(0xFFD56E3B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 200),
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
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
