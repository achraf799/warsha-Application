import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';

import '../../WarshaIntro/SkipButton.dart';
import 'ScClient1.dart';
import 'ScClient3.dart';

class ScClient2 extends StatefulWidget {
  @override
  _ScClient2State createState() => _ScClient2State();
}

class _ScClient2State extends State<ScClient2> {
  int selected = 0;
  final _controller = PageController();
  final wilayas = [
    'ولاية أدرار',
    'ولاية الشلف',
    'ولاية الأغواط',
    'ولاية أم البواقي',
    'ولاية باتنة',
    'ولاية بجاية',
    'ولاية بسكرة',
    'ولاية بشار',
    'ولاية البليدة',
    'ولاية البويرة',
    'ولاية تمنراست',
    'ولاية تبسة',
    'ولاية تلمسان',
    'ولاية تيارت',
    'ولاية تيزي وزو',
    'ولاية الجزائر',
    'ولاية الجلفة',
    'ولاية جيجل',
    'ولاية سطيف',
    'ولاية سعيدة',
    'ولاية سكيكدة',
    'ولاية سيدي بلعباس',
    'ولاية عنابة',
    'ولاية قالمة',
    'ولاية قسنطينة',
    'ولاية المدية',
    'ولاية مستغانم',
    'ولاية المسيلة',
    'ولاية المغرب',
    'ولاية المنيعة',
    'ولاية المسيلة',
    'ولاية معسكر',
    'ولاية نعامة',
    'ولاية وهران',
    'ولاية البيض',
    'ولاية إليزي',
    'ولاية برج بوعريريج',
    'ولاية بومرداس',
    'ولاية الطارف',
    'ولاية تندوف',
    'ولاية تسمسيلت',
    'ولاية الوادي',
    'ولاية خنشلة',
    'ولاية سوق أهراس',
    'ولاية تيبازة',
    'ولاية ميلة',
    'ولاية عين الدفلى',
    'ولاية النعامة',
    'ولاية عين تيموشنت',
    'ولاية غرداية',
    'ولاية غليزان',
    'ولاية البيضاء',
    'ولاية الأبيار',
    'ولاية تامنراست',
    'ولاية إيليزي',
    'ولاية برج باجي مختار',
    'ولاية بومرداس',
    'ولاية الشرقية',
    'ولاية الغربية',
    'ولاية إليزي',
    'ولاية اليزي',
    'ولاية تندوف',
    'ولاية تيسمسيلت',
    'ولاية الأغواط',
    'ولاية ولاية الأمير عبد القادر',
    'ولاية ولاية عين صالح',
    'ولاية ولاية البيض',
    'ولاية ولاية النعامة',
    'ولاية ولاية تندلة',
    'ولاية ولاية إليزي',
    'ولاية ولاية بومرداس',
  ];
  String selectedWilaya = 'الولايـــــــــــة';
  String selectedDaira = 'الدائــــــــــــــرة';
  String selectedBaladia = 'البلــــديـــــــة';
  String valueselected = '';
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
                    'أين تقيم؟',
                    style: TextStyle(
                      color: Color(0xFF190B28),
                      fontSize: screenHeight * 0.07,
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
                  height: 42,
                  child: Opacity(
                    opacity: 0.80,
                    child: Text(
                      'قم بتحديد الولاية وبلدية اقامتك كي يظهر لك اقرب الحرفيين\n. منك',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF190B28),
                        fontSize: 16,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )),
              ),
              Positioned(
                left: screenWidth * 0.043,
                right: screenWidth * 0.043,
                top: screenHeight * 0.25,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.034),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        hint: Align(
                          alignment: Alignment.center,
                          child: Text(
                            selectedWilaya != null
                                ? selectedWilaya
                                : '        الولايـــــــــــة       ',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: screenHeight * 0.031,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        items: wilayas.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedWilaya = value!;
                          });
                        },
                        dropdownColor: Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFF190B28),
                          size: screenHeight * 0.035,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.043,
                right: screenWidth * 0.043,
                top: screenHeight * 0.35,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.034),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        hint: Align(
                          alignment: Alignment.center,
                          child: Text(
                            selectedDaira != null
                                ? selectedDaira
                                : '        الدائــــــــــــــرة       ',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: screenHeight * 0.031,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        items: wilayas.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedDaira = value!;
                          });
                        },
                        dropdownColor: Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFF190B28),
                          size: screenHeight * 0.035,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenWidth * 0.043,
                right: screenWidth * 0.043,
                top: screenHeight * 0.45,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.034),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        hint: Align(
                          alignment: Alignment.center,
                          child: Text(
                            selectedBaladia != null
                                ? selectedBaladia
                                : '        البلــــديـــــــة       ',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: screenHeight * 0.031,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        items: wilayas.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedBaladia = value!;
                          });
                        },
                        dropdownColor: Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFF190B28),
                          size: screenHeight * 0.035,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.54,
                left: 0,
                right: 0,
                child: Center(
                    child: SizedBox(
                  width: 326,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'هذا عبارة عن خيار إضافي في حالة لم يعمل GPS فالمنطقة المتواجد فيها ,اما فالحالات العادية فالتطبيق يستخدم تقنية تحديد المواقع',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )),
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
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: ScClient3(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              /* Positioned(
                top: screenHeight * 0.71,
                left: 0,
                right: 0,
                child: Center(
                  child: SkipButton(
                    buttonText: 'الغاء',
                    nextPage: ScClient1(),
                  ),
                ),
              ),*/
              Positioned(
                top: screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  child: LinearPercentIndicator(
                    width: screenWidth * 0.98,
                    lineHeight: screenHeight * 0.01,
                    percent: 0.3,
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
                  opacity: 1,
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
                  opacity: 0.5,
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
