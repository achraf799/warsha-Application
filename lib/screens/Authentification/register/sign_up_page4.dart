import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/utils/select_btn_v2.dart';

import '../../../data/controllers/auth_controller.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/select_btn.dart';
import '../../../utils/show_custom_snackbar.dart';
import '../../CustomButton.dart';

class SignUpPage4 extends StatefulWidget {
  const SignUpPage4({super.key});

  @override
  State<SignUpPage4> createState() => _SignUpPage4State();
}

class _SignUpPage4State extends State<SignUpPage4> {
  int _selected = 0;

  void _registration() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      showCustomSnackBar("Connection problem", title: "No internet connection");
    } else {
      if (_selected == 0) {
        showCustomSnackBar("Type in your password", title: "Password");
      } else {
        //Get.find<AuthController>().register(name, email, phone, password, birthDate, sexe, city);

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
      body: Column(
        children: [
          SizedBox(
            height: Dimension.height10 * 3,
          ),
          Center(
            child: Text(
              'ماهي حرفتك ؟',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimension.height10 * 3.648,
                fontFamily: 'Lalezar',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            width: Dimension.height10 * 33.8,
            height: Dimension.height10 * 5.5,
            child: Opacity(
              opacity: 0.80,
              child: Text(
                '.يرجى إختيار الحرفة الرئيسية لك والذي تود العمل فيها',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: const Color(0xFF190B28),
                  fontSize: Dimension.height10 * 1.8,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: Dimension.screenHeight * 0.53,
              width: Dimension.screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectBtnV2(
                      title: ':ميكانيـــكي مركبات ',
                      description:
                          'إصلاح وصيانة المركبات والمعدات الثقيلة والصناعية. يتضمن ذلك التشخيص وإصلاح الأعطال الميكانيكية والكهربائية والإلكترونية',
                      index: 1,
                      selected: _selected,
                      onPressed: () {
                        setState(() {
                          _selected = 1;
                        });
                      },
                      image: const AssetImage('images/arts1.png'),
                    ),
                    SelectBtnV2(
                      title: 'Title 2',
                      description: 'Description 2',
                      index: 2,
                      selected: _selected,
                      onPressed: () {
                        setState(() {
                          _selected = 2;
                        });
                      },
                      image: const AssetImage('images/arts2.png'),
                    ),
                    SelectBtnV2(
                      title: 'Title 3',
                      description: 'Description 3',
                      index: 3,
                      selected: _selected,
                      onPressed: () {
                        setState(() {
                          _selected = 3;
                        });
                      },
                      image: const AssetImage('images/arts3.png'),
                    ),
                    SelectBtnV2(
                      title: 'Title 4',
                      description: 'Description 4',
                      index: 4,
                      selected: _selected,
                      onPressed: () {
                        setState(() {
                          _selected = 4;
                        });
                      },
                      image: const AssetImage('images/arts4.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimension.height10 * 1.5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimension.height20),
            width: double.maxFinite,
            alignment: Alignment.centerRight,
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
                        child: const SignUpPage4(),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: Dimension.height10 * 2,
          ),
          Container(
            width: Dimension.screenWidth,
            child: LinearPercentIndicator(
              width: Dimension.screenWidth * 0.98,
              lineHeight: Dimension.screenHeight * 0.01,
              percent: 0.7,
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
                  width: Dimension.height10 / 1.5,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "المعلومات الشخصية",
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
                    "اختيار الحرفة",
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
        ],
      ),
    );
  }
}
