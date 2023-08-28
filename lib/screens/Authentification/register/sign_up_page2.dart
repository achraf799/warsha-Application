import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../data/controllers/auth_controller.dart';
import '../../../routes/route_helper.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/show_custom_snackbar.dart';
import '../../CustomButton.dart';
import '../../WarshaIntro/SkipButton.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  final _wilayasList = [
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
  String? _selectedWilaya;
  String? _selectedDaira;
  String? _selectedBaladia;
  final bool _isClient = Get.find<AuthController>().isClient;

  DropdownMenuItem<String> _buildMenuItem(String item) => DropdownMenuItem(
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

  void _registration() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      showCustomSnackBar("Connection problem", title: "No internet connection");
    } else {
      if (_selectedWilaya == null) {
        showCustomSnackBar("Select your birth day", title: "Day");
      } else if (_selectedDaira == null) {
        showCustomSnackBar("Select your birth month", title: "Month");
      } else if (_selectedBaladia == null) {
        showCustomSnackBar("Type in your birth year", title: "Year");
      } else {
        Get.find<AuthController>().regUser!.city = _selectedWilaya;
        Get.toNamed(RouteHelper.getSignUpPage3());

        /* Get.find<AuthController>().register(name, email, phone).then((status) {
          if (status) {
            Get.put(ConversationController(conversationRepo: Get.find()));
            print("Success registration");
            Get.toNamed(RouteHelper.getHomePage());
          } else {
            showCustomSnackBar("Already registered");
          }
        });*/
      }
    }
  }

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
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: Dimension.height10 * 5),
            child: Center(
              child: Text(
                'أين تقيم؟',
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: Dimension.screenHeight * 0.07,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            width: Dimension.height10 * 33.8,
            height: Dimension.height10 * 4.2,
            child: Opacity(
              opacity: 0.80,
              child: Text(
                'قم بتحديد الولاية وبلدية اقامتك كي يظهر لك اقرب الحرفيين\n. منك',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF190B28),
                  fontSize: Dimension.height10 * 1.6,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            width: Dimension.screenWidth * 0.8,
            height: Dimension.screenHeight * 0.07,
            margin: EdgeInsets.only(top: Dimension.height10 * 1.5),
            decoration: ShapeDecoration(
              color: const Color(0xFFE9E5E4),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimension.screenHeight * 0.034),
              ),
            ),
            child: Center(
              child: DropdownButton<String>(
                hint: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '        الولايـــــــــــة       ',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: Dimension.screenHeight * 0.031,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                value: _selectedWilaya,
                items: _wilayasList.map(_buildMenuItem).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedWilaya = value!;
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
          SizedBox(
            height: Dimension.height20,
          ),
          Container(
            width: Dimension.screenWidth * 0.8,
            height: Dimension.screenHeight * 0.07,
            decoration: ShapeDecoration(
              color: Color(0xFFE9E5E4),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimension.screenHeight * 0.034),
              ),
            ),
            child: Center(
              child: DropdownButton<String>(
                hint: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '        الدائــــــــــــــرة       ',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: Dimension.screenHeight * 0.031,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                value: _selectedDaira,
                items: _wilayasList.map(_buildMenuItem).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedDaira = value!;
                  });
                },
                dropdownColor: Color(0xFFE9E5E4),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xFF190B28),
                  size: Dimension.screenHeight * 0.035,
                ),
                underline: SizedBox(),
              ),
            ),
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          Container(
            width: Dimension.screenWidth * 0.8,
            height: Dimension.screenHeight * 0.07,
            decoration: ShapeDecoration(
              color: Color(0xFFE9E5E4),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimension.screenHeight * 0.034),
              ),
            ),
            child: Center(
              child: DropdownButton<String>(
                hint: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '        البلــــديـــــــة       ',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: Dimension.screenHeight * 0.031,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                value: _selectedBaladia,
                items: _wilayasList.map(_buildMenuItem).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedBaladia = value!;
                  });
                },
                dropdownColor: Color(0xFFE9E5E4),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color(0xFF190B28),
                  size: Dimension.screenHeight * 0.035,
                ),
                underline: SizedBox(),
              ),
            ),
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          Container(
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
          ),
          SizedBox(
            height: Dimension.height20,
          ),
          Center(
            child: CustomButton(
              text: 'متابعة',
              fontSize: 25,
              buttonColor: Color(0xFFD56E3B),
              onPressed: () {
                _registration();
              },
            ),
          ),
          Center(
              child: TextButton(
            onPressed: () {
              Get.back();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            child: Text(
              "الغاء",
              style: TextStyle(
                fontFamily: 'Lalezar',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: Dimension.screenWidth * 0.06,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          )),
          SizedBox(
            height: Dimension.height10 * 5,
          ),
          Container(
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimension.height10 / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'تحديد الحساب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.height10 * 1.4,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimension.height10 / 3,
                ),
                Opacity(
                  opacity: 1,
                  child: Text(
                    _isClient ? "الإقامـــــة" : "مكـــــــان العمـــــل",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.height10 * 1.4,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimension.height10 / 3,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    _isClient ? 'كلمـــــــة الـــــسر' : "اختيار الحرفة",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.height10 * 1.4,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimension.height10 / 3,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'تأكيد رقم الهاتف',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF190B28),
                      fontSize: Dimension.height10 * 1.4,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
