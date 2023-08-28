import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/data/models/user_model.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/select_btn.dart';
import '../../../utils/show_custom_snackbar.dart';
import '../../CustomButton.dart';
import '../../WarshaIntro/SkipButton.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({super.key});

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  int _selectedSexe = 0;
  String _sexe = "";
  String? _selectedMonth;
  String? _selectedDay;
  final bool _isClient = Get.find<AuthController>().isClient;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final _daysList = List.generate(31, (index) {
    return "${index + 1}";
  });
  final _monthsList = [
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];

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
      String name = _nameController.text.trim();
      String email = _mailController.text.trim();
      String phone = _phoneController.text.trim();
      String year = _yearController.text.trim();
      int month = 0;

      if (name.isEmpty) {
        showCustomSnackBar("Type in your name", title: "Name");
      } else if (_sexe.isEmpty) {
        showCustomSnackBar("Select your sexe", title: "Sexe");
      } else if (_selectedDay == null) {
        showCustomSnackBar("Select your birth day", title: "Day");
      } else if (_selectedMonth == null) {
        showCustomSnackBar("Select your birth month", title: "Month");
      } else if (year.isEmpty) {
        showCustomSnackBar("Type in your birth year", title: "Year");
      } else if (int.tryParse(year) == null) {
        showCustomSnackBar("Enter a valid year", title: "Year");
      } else if (int.parse(year) > DateTime.now().year) {
        showCustomSnackBar("Enter a valid year", title: "Year");
      } else if (email.isEmpty) {
        showCustomSnackBar("Type in your email address",
            title: "Email address");
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type in a valid email address",
            title: "Valid email address");
      } else if (phone.isEmpty) {
        showCustomSnackBar("Type in your phone number", title: "Phone number");
      } else {
        for (var i = 0; i < _monthsList.length; i++) {
          if (_monthsList[i] == _selectedMonth) {
            month = i + 1;
          }
        }
        UserModel usr = UserModel(
            name: name,
            sexe: _sexe,
            birthDate:
                DateTime(int.parse(year), month, int.parse(_selectedDay!))
                    .toString(),
            email: email,
            phone: phone);
        Get.find<AuthController>().setRegUser = usr;
        Get.toNamed(RouteHelper.getSignUpPage2());

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
            margin: EdgeInsets.only(top: Dimension.height10 * 4),
            child: Center(
              child: Text(
                'قم بملئ معلوماتك الشخصية',
                style: TextStyle(
                  color: const Color(0xFF190B28),
                  fontSize: Dimension.height10 * 3.048,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            width: Dimension.height10 * 33.8,
            height: Dimension.height10 * 4.9,
            margin: EdgeInsets.only(top: Dimension.height10 * 2),
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
                        color: const Color(0xFF190B28),
                        fontSize: Dimension.height10 * 1.6,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, top: 0),
                    child: Icon(
                      Icons.star,
                      color: Colors.red,
                      size: Dimension.height10 * 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: Dimension.height20, vertical: Dimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectBtn(
                  index: 1,
                  selected: _selectedSexe,
                  onPressed: () {
                    setState(() {
                      _selectedSexe = 1;
                      _sexe = "Female";
                    });
                  },
                  icon: Icons.female,
                ),
                SelectBtn(
                  index: 2,
                  selected: _selectedSexe,
                  onPressed: () {
                    setState(() {
                      _selectedSexe = 2;
                      _sexe = "Male";
                    });
                  },
                  icon: Icons.male,
                ),
                Container(
                  width: Dimension.height10 * 22.0,
                  height: Dimension.height10 * 4.8,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'الإسم الكامل',
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
                        Icons.person,
                        color: Colors.black38,
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: Dimension.height20),
            width: double.maxFinite,
            alignment: Alignment.centerRight,
            child: Text(
              'تاريخ الميلاد',
              style: TextStyle(
                color: Colors.black38,
                fontSize: Dimension.height10 * 2.248,
                fontFamily: 'Lalezar',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimension.height20,
                right: Dimension.height20,
                top: Dimension.height10,
                bottom: Dimension.height10 * 1.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Dimension.height10 * 9,
                  height: Dimension.height10 * 4.8,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: _yearController,
                    decoration: InputDecoration(
                      hintText: 'عام',
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: Dimension.height10 * 2.248,
                        fontFamily: 'Lalezar',
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(Dimension.screenHeight * 2.25),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFE9E5E4),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Dimension.height10,
                          horizontal: Dimension.height10),
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimension.height10 * 2.248,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: Dimension.height10 * 12,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE9E5E4),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimension.height10 * 2.25),
                    ),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      hint: Text(
                        'شهر',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: Dimension.height10 * 2.248,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _selectedMonth,
                      items: _monthsList.map(_buildMenuItem).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedMonth = value!;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: Dimension.height10 * 8,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE9E5E4),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimension.height10 * 2.25),
                    ),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      hint: Text(
                        'يوم',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: Dimension.height10 * 2.248,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: _selectedDay,
                      items: _daysList.map(_buildMenuItem).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedDay = value!;
                        });
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimension.height10 * 1.8,
                      ),
                      dropdownColor: const Color(0xFFE9E5E4),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Dimension.height10 * 32,
            height: Dimension.height10 * 4.8,
            child: TextField(
              controller: _mailController,
              decoration: InputDecoration(
                hintText: 'البريد الالكتروني',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: Dimension.height10 * 2.248,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimension.height10 * 22.25),
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFFE9E5E4),
                contentPadding: EdgeInsets.symmetric(
                    vertical: Dimension.height10,
                    horizontal: Dimension.height10),
                suffixIcon: const Icon(
                  Icons.mail,
                  color: Colors.black38,
                ),
              ),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(
            height: Dimension.height10 * 1.5,
          ),
          Container(
            width: Dimension.height10 * 32,
            height: Dimension.height10 * 4.8,
            child: TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'رقم الهاتف',
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
          SizedBox(
            height: Dimension.height10 * 3,
          ),
          CustomButton(
            text: 'متابعة',
            fontSize: Dimension.height10 * 2.5,
            buttonColor: const Color(0xFFD56E3B),
            onPressed: () {
              _registration();
            },
          ),
          SizedBox(
            height: Dimension.height10 / 2,
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
              percent: 0.3,
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
                    'المعلومات الشخصية',
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
