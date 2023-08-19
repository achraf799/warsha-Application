import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/CustomButton.dart';

import '../../../utils/dimensions.dart';
import '../../WarshaIntro/SkipButton.dart';
import 'ScArtisan1.dart';
import 'ScArtisan3.dart';

class ScArtisan2 extends StatefulWidget {
  @override
  _ScArtisan2State createState() => _ScArtisan2State();
}

class _ScArtisan2State extends State<ScArtisan2> {
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
      backgroundColor: const Color(0xFFFBF5F3),
      appBar: AppBar(
        leadingWidth: Dimension.height10 * 15,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: Dimension.height10),
          child: SvgPicture.asset(
            'images/logo02.svg',
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Positioned(
                top: Dimension.screenHeight * 0.07,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'أين تعمل؟',
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenHeight * 0.07,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.17,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: Dimension.screenWidth * 0.85,
                    height: Dimension.screenHeight * 0.085,
                    child: Text(
                      'قم بتحديد الولاية وبلدية اقامتك كي تظهر لك مشاريع قريبة منك للعمل عليها',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF190B28),
                        fontSize: Dimension.screenWidth * 0.04,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.043,
                right: Dimension.screenWidth * 0.043,
                top: Dimension.screenHeight * 0.25,
                child: Center(
                  child: Container(
                    width: Dimension.screenWidth * 0.8,
                    height: Dimension.screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Dimension.screenHeight * 0.034),
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
                              fontSize: Dimension.screenHeight * 0.031,
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
                        dropdownColor: const Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: const Color(0xFF190B28),
                          size: Dimension.screenHeight * 0.035,
                        ),
                        underline: const SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.043,
                right: Dimension.screenWidth * 0.043,
                top: Dimension.screenHeight * 0.35,
                child: Center(
                  child: Container(
                    width: Dimension.screenWidth * 0.8,
                    height: Dimension.screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Dimension.screenHeight * 0.034),
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
                              fontSize: Dimension.screenHeight * 0.031,
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
                        dropdownColor: const Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: const Color(0xFF190B28),
                          size: Dimension.screenHeight * 0.035,
                        ),
                        underline: const SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.043,
                right: Dimension.screenWidth * 0.043,
                top: Dimension.screenHeight * 0.45,
                child: Center(
                  child: Container(
                    width: Dimension.screenWidth * 0.8,
                    height: Dimension.screenHeight * 0.07,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Dimension.screenHeight * 0.034),
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
                              fontSize: Dimension.screenHeight * 0.031,
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
                        dropdownColor: const Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: const Color(0xFF190B28),
                          size: Dimension.screenHeight * 0.035,
                        ),
                        underline: const SizedBox(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.54,
                left: 0,
                right: 0,
                child: Center(
                    child: SizedBox(
                  width: Dimension.height10 * 32.6,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'هذا عبارة عن خيار إضافي في حالة لم يعمل GPS فالمنطقة المتواجد فيها ,اما فالحالات العادية فالتطبيق يستخدم تقنية تحديد المواقع',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimension.height10 * 1.5,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.63,
                left: 0,
                right: 0,
                child: Center(
                  child: CustomButton(
                    text: 'متابعة',
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
                              child: ScArtisan3(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.71,
                left: 0,
                right: 0,
                child: Center(
                  child: SkipButton(
                    buttonText: 'الغاء',
                    nextPage: RouteHelper.getScArtisan1(),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: Dimension.screenWidth,
                  child: LinearPercentIndicator(
                    width: Dimension.screenWidth * 0.98,
                    lineHeight: Dimension.screenHeight * 0.01,
                    percent: 0.4,
                    barRadius: const Radius.circular(20),
                    backgroundColor: const Color(0xFFE9E5E4),
                    progressColor: const Color(0xFFD56E3B),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.035,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تحديد الحساب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.25,
                top: Dimension.screenHeight * 0.85,
                child: Text(
                  'مكـــــــان العمـــــل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF190B28),
                    fontSize: Dimension.screenWidth * 0.035,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.53,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'اختيار الحرفة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Dimension.screenWidth * 0.71,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'تأكييد رقم/البريد',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.screenWidth * 0.035,
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
            fontSize: Dimension.height10 * 2.248,
            fontFamily: 'Lalezar',
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
