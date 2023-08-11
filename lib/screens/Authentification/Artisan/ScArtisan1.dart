import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';

import '../../Page02.dart';
import '../../SelectedList.dart';
import '../../WarshaIntro/SkipButton.dart';
import '../Client/ScClient2.dart';
import 'ScArtisan2.dart';

class ScArtisan1 extends StatefulWidget {
  @override
  _ScArtisan1State createState() => _ScArtisan1State();
}

class _ScArtisan1State extends State<ScArtisan1> {
  int selected = 0;
  final items = ['يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو', 'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر',];
  final items1 = [
    '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20',
    '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'
  ];
  String selectedDay='يوم';
  String selectedMonth='شهر';
  final _controller = PageController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _yearController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final _textController = TextEditingController();
  String username = '';

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
                top: screenHeight * 0.22,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SelectBtn(
                        index: 1,
                        selected: selected,
                        onPressed: () {
                          setState(() {
                            selected = 1;
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
                          });
                        },
                        icon: Icons.male,
                      ),
                      Container(
                        width: 300,
                        height: 48,
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: 'الإسم الكامل',
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
                left: 320,
                right: 0,
                top: screenHeight * 0.31,
                child: Text(
                  'تاريخ الميلاد',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 22.48,
                    fontFamily: 'Lalezar',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 320,
                right: 0,
                top: screenHeight * 0.36,
                child: Center(
                  child: Container(
                    width: 180,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.50),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        hint: Text(
                          selectedDay != null ? selectedDay : 'يوم',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 22.48,
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
                          fontSize: 18.0,
                        ),
                        dropdownColor: Color(0xFFE9E5E4),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 30,
                right: 0,
                top: screenHeight * 0.36,
                child: Center(
                  child: Container(
                    width: 130,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE9E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.50),
                      ),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        hint: Text(
                          selectedMonth != null ? selectedMonth : 'شهر',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 22.48,
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
                top: screenHeight * 0.36,
                right: 300,
               child:Center(
                 child: Container(
                  width: 80,
                  height: 48,
                  child: TextField(
                    controller: _yearController,
                    decoration: InputDecoration(
                      hintText: 'عام',
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
                    ),
                    textAlign: TextAlign.center,
                  ),
                 ),
               ),
              ),
              Positioned(
                top: screenHeight * 0.435,
                right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: 400,
                      height: 48,
                      child: TextField(
                        controller: _mailController,
                        decoration: InputDecoration(
                          hintText: 'البريد الالكتروني',
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
                top: screenHeight * 0.515,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 400,
                    height: 48,
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: 'رقم الهاتف',
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
                              child: ScArtisan2(),
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
                    nextPage: Page02(),
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
                child: Text(
                  'المعلومات الشخصية',
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
    final screenWidth = MediaQuery.of(context).size.width;

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
      width: 38,
      height: 48,
      margin: EdgeInsets.only(right: 5, left: 5),
      decoration: ShapeDecoration(
        color: Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: getBorderColor(),
          ),
          borderRadius: BorderRadius.circular(22.5),
        ),
        shadows: [
          if (selected == 2 && selected == index)
            BoxShadow(
              color: Colors.blue,
              blurRadius: 24,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          if (selected == 1 && selected == index)
            BoxShadow(
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
            borderRadius: BorderRadius.circular(screenWidth * 0.024),
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
              color:  getColor(),
              size: screenWidth * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
