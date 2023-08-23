import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/screens/CustomButton.dart';

import '../../../utils/dimensions.dart';
import '../../../utils/show_custom_snackbar.dart';
import '../../Page02.dart';
import '../../SelectedList.dart';
import '../../WarshaIntro/SkipButton.dart';
import '../Client/ScClient2.dart';
import 'ScClient2.dart';

class ScClient1 extends StatefulWidget {
  @override
  _ScClient1State createState() => _ScClient1State();
}

class _ScClient1State extends State<ScClient1> {
  int selected = 0;
  final items = [
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
  final items1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];
  String selectedDay = 'يوم';
  String selectedMonth = 'شهر';
  final _controller = PageController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final _textController = TextEditingController();
  String username = '';
  String sexe = "";

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
      } else if (sexe.isEmpty) {
        showCustomSnackBar("Select your sexe", title: "Sexe");
      } else if (selectedDay == 'يوم') {
        showCustomSnackBar("Select your birth day", title: "Day");
      } else if (selectedMonth == 'شهر') {
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
        for (var i = 0; i < items.length; i++) {
          if (items[i] == selectedMonth) {
            month = i + 1;
          }
        }
        print(DateTime(int.parse(year), month, int.parse(selectedDay)));
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
              Positioned(
                top: Dimension.screenHeight * 0.17,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: Dimension.height10 * 33.8,
                    height: Dimension.height10 * 4.9,
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
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.22,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(Dimension.height10 * 1.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SelectBtn(
                        index: 1,
                        selected: selected,
                        onPressed: () {
                          setState(() {
                            selected = 1;
                            sexe = "Female";
                          });
                        },
                        icon: Icons.female,
                      ),
                      SelectBtn(
                        index: 2,
                        selected: selected,
                        onPressed: () {
                          setState(() {
                            selected = 2;
                            sexe = "Male";
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
              ),
              Positioned(
                left: Dimension.height10 * 25,
                right: 0,
                top: Dimension.screenHeight * 0.31,
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
              Positioned(
                left: Dimension.height10 * 25,
                right: 0,
                top: Dimension.screenHeight * 0.36,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 18,
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
                          selectedDay,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: Dimension.height10 * 2.248,
                            fontFamily: 'Lalezar',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        items: items1.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedDay = value!;
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
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: Dimension.screenHeight * 0.36,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 13,
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
                          selectedMonth,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: Dimension.height10 * 2.248,
                            fontFamily: 'Lalezar',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedMonth = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.36,
                right: Dimension.height10 * 25.5,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 8,
                    height: Dimension.height10 * 4.8,
                    child: TextField(
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
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.44,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: Dimension.height10 * 32,
                    height: Dimension.height10 * 24.8,
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
                ),
              ),
              Positioned(
                top: Dimension.screenHeight * 0.520,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
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
                ),
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
                      _registration();
                      //Registration here<<<<<
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
                    nextPage: RouteHelper.getPage02(),
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
                    percent: 0.3,
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
                  opacity: 0.5,
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
                left: Dimension.screenWidth * 0.225,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
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
              ),
              Positioned(
                left: Dimension.screenWidth * 0.45,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'كلمـــــــة الـــــسر',
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
              Positioned(
                left: Dimension.screenWidth * 0.71,
                top: Dimension.screenHeight * 0.85,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    'تأكيد رقم الهاتف',
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

class SelectBtn extends StatelessWidget {
  final int index;
  final int selected;
  final Function() onPressed;
  final IconData icon;

  const SelectBtn({
    required this.index,
    required this.selected,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Color getBorderColor() {
      if (selected == 2 && selected == index) {
        return Colors.blue;
      } else if (selected == 1 && selected == index) {
        return Colors.pinkAccent;
      } else {
        return Colors.transparent;
      }
    }

    Color getColor() {
      if (selected == 2 && selected == index) {
        return Colors.blue;
      } else if (selected == 1 && selected == index) {
        return Colors.pinkAccent;
      } else {
        return Colors.grey;
      }
    }

    return Container(
      width: Dimension.height10 * 3.8,
      height: Dimension.height10 * 4.8,
      margin: const EdgeInsets.only(right: 5, left: 5),
      decoration: ShapeDecoration(
        color: const Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: getBorderColor(),
          ),
          borderRadius: BorderRadius.circular(Dimension.height10 * 2.25),
        ),
        shadows: [
          if (selected == 2 && selected == index)
            const BoxShadow(
              color: Colors.blue,
              blurRadius: 24,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          if (selected == 1 && selected == index)
            const BoxShadow(
              color: Colors.pinkAccent,
              blurRadius: 24,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
        ],
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimension.screenWidth * 0.024),
            side: BorderSide(
              color: getBorderColor(),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: getColor(),
              size: Dimension.screenWidth * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
