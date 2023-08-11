import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import '../../Page02.dart';
import '../../WarshaIntro/SkipButton.dart';
import 'ScClient2.dart';
import 'ScClient3.dart';

class ScClient4 extends StatefulWidget {
  @override
  _ScClient4State createState() => _ScClient4State();
}

class _ScClient4State extends State<ScClient4> {
  TextEditingController _pswrdController = TextEditingController();
  bool _obscureText = true;
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
                top: screenHeight * 0.15,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'تأكيد رقم الهاتف',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 36.48,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.23,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: 228,
                    height: 29,
                    child: Opacity(
                      opacity: 0.75,
                      child: Text(
                        'سوف تصلك رسالة قصيرة على الرقم ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF190B28),
                          fontSize: 19,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ),
              ),
              Positioned(
                top: screenHeight * 0.26,
                left: 0,
                right: 0,
                child: Center(
                    child: SizedBox(
                      width: 228,
                      height: 29,
                      child: Opacity(
                        opacity: 0.75,
                        child: Opacity(
                          opacity: 0.75,
                          child: Text(
                            '+213XXXXXXXX',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ),
                    )
                ),
              ),

              Positioned(
                top: screenHeight * 0.32,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(
                      width: 59,
                      height: 59,
                      child: SizedBox(
                        height: 59,
                        width: 59,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: InputDecoration(hintText: "_",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12,),
                                borderSide: BorderSide(
                                  color: Color(0xFFD56E3B),
                                  width: 3,
                                )
                            ),
                          ),
                          cursorColor:  Color(0xFFD56E3B),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),

                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 59,
                      height: 59,
                      child: SizedBox(
                        height: 59,
                        width: 59,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},

                          decoration: InputDecoration(hintText: "_",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12,),
                                  borderSide: BorderSide(
                                    color: Color(0xFFD56E3B),
                                    width: 3,
                                  )
                              ),
                          ),
                          cursorColor:  Color(0xFFD56E3B),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),

                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 59,
                      height: 59,

                      child: SizedBox(
                        height: 59,
                        width: 59,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          decoration: InputDecoration(hintText: "_",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12,),
                                borderSide: BorderSide(
                                  color: Color(0xFFD56E3B),
                                  width: 3,
                                )
                            ),
                          ),
                          cursorColor:  Color(0xFFD56E3B),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),

                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 59,
                      height: 59,

                      child: SizedBox(
                        height: 59,
                        width: 59,
                        child: TextFormField(
                          onChanged: (value){
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          decoration: InputDecoration(hintText: "_",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12,),
                                borderSide: BorderSide(
                                  color: Color(0xFFD56E3B),
                                  width: 3,
                                )
                            ),
                          ),
                          cursorColor:  Color(0xFFD56E3B),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),

                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 59,
                      height: 59,
                      child: SizedBox(
                        height: 59,
                        width: 59,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).unfocus();

                            }
                          },
                          onSaved: (pin5) {},
                          decoration: InputDecoration(hintText: "_",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12,),
                                borderSide: BorderSide(
                                  color: Color(0xFFD56E3B),
                                  width: 3,
                                )
                            ),
                          ),
                          cursorColor:  Color(0xFFD56E3B),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.45,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'تأكيد',
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
                              child: ScClient2(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                top: screenHeight * 0.53,
                child: SizedBox(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.1,
                  child: Container(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.2,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'لم تصلك رسالة ؟',
                          style: TextStyle(
                            color: Color(0xFF190B28),
                            fontSize: 22,
                            fontFamily: 'Lalezar',
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: ' ارسل مجددا',
                              style: TextStyle(
                                color: Color(0xFFD56E3B),
                                fontSize: 22,
                                fontFamily: 'Lalezar',
                                fontWeight: FontWeight.w400,
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
                left: 0,
                right: 0,
                top: screenHeight * 0.6,
                child: SizedBox(
                  width: 190,
                  height: 29,
                  child: Opacity(
                    opacity: 0.70,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'تواجه مشكلة ؟ ',
                            style: TextStyle(
                              color: Color(0xFF190B28),
                              fontSize: 19,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'اتصل بالدعم',
                            style: TextStyle(
                              color: Color(0xFFD56E3B),
                              fontSize: 19,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
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
                    percent: 0.8,
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
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'الإقامـــــة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 16,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.45,
                top: screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'كلمـــــــة الـــــسر',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: 16,
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
                  opacity: 1,
                  child: Text(
                    'تأكيد رقم الهاتف',
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
Widget buildNumberTextField() {
  return Container(
    width: 59,
    height: 59,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xFF190B28)),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: TextField(
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        counterText: '',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(12),
      ),
    ),
  );
}

