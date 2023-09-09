import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../data/controllers/auth_controller.dart';
import '../../../routes/route_helper.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/show_custom_snackbar.dart';
import '../../../utils/siffix_icon_button.dart';
import '../../CustomButton.dart';

class SignUpPage3 extends StatefulWidget {
  const SignUpPage3({super.key});

  @override
  State<SignUpPage3> createState() => _SignUpPage3State();
}

class _SignUpPage3State extends State<SignUpPage3> {
  TextEditingController _pswrdController = TextEditingController();
  TextEditingController _cnfrmpswrdController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool _isAccepted = false;
  final bool _isClient = Get.find<AuthController>().isClient;

  void _registration() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      showCustomSnackBar("Connection problem", title: "No internet connection");
    } else {
      String password = _pswrdController.text.trim();
      String confPassword = _cnfrmpswrdController.text.trim();

      if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title: "Password");
      } else if (password.length < 6) {
        showCustomSnackBar("password too short", title: "Password");
      } else if (confPassword.isEmpty) {
        showCustomSnackBar("Type in your password", title: "Confirm password");
      } else if (password != confPassword) {
        showCustomSnackBar("Unmatched passwords", title: "Password");
      } else if (!_isAccepted) {
        showCustomSnackBar("Accept the Terms & Services Policy",
            title: "Terms & Services");
      } else {
        Get.find<AuthController>().regUser!.password = password;
        if (_isClient) {
          Get.find<AuthController>().register();
        } else {
          Get.toNamed(RouteHelper.getSignUpPage4());
        }
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
        child: Column(
          children: [
            SizedBox(
              height: Dimension.height10 * 5,
            ),
            Center(
              child: Text(
                'قم بملئ معلوماتك الشخصية',
                style: TextStyle(
                  color: Color(0xFF190B28),
                  fontSize: Dimension.height10 * 3.048,
                  fontFamily: 'Lalezar',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: Dimension.height10 * 3,
            ),
            Center(
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
            SizedBox(
              height: Dimension.height10,
            ),
            Container(
              width: Dimension.height10 * 32,
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
                      _obscureText ? Icons.visibility_off : Icons.visibility,
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
            SizedBox(
              height: Dimension.height20,
            ),
            Container(
              width: Dimension.height10 * 32,
              height: Dimension.height10 * 4.8,
              child: TextField(
                controller: _cnfrmpswrdController,
                obscureText: _obscureText1,
                decoration: InputDecoration(
                  hintText: 'تأكييد كلمة السر ',
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
                      _obscureText1 ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black38,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText1 = !_obscureText1;
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
            SizedBox(
              height: Dimension.height20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Dimension.height10 * 30,
                    child: Opacity(
                      opacity: 0.75,
                      child: Text(
                        'اوافق على شروط الاستخدام والخصوصية لإستخدام التطبيق.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimension.height10 * 1.748,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimension.height10 * 5,
                    height: Dimension.height10 * 7.5,
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
            SizedBox(
              height: Dimension.height20 * 3,
            ),
            CustomButton(
              text: 'متابعة',
              fontSize: Dimension.height10 * 2.5,
              buttonColor: const Color(0xFFD56E3B),
              onPressed: () {
                _registration();
              },
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
              height: Dimension.height10 * 7,
            ),
            Container(
              width: Dimension.screenWidth,
              child: LinearPercentIndicator(
                width: Dimension.screenWidth * 0.98,
                lineHeight: Dimension.screenHeight * 0.01,
                percent: _isClient ? 0.7 : 0.5,
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
                  !_isClient
                      ? Opacity(
                          opacity: 1,
                          child: Text(
                            ' كلمـــــــة الـــــسر',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: const Color(0xFF190B28),
                              fontSize: Dimension.height10 * 1.4,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      : Opacity(
                          opacity: 0.5,
                          child: Text(
                            ' الإقامـــــة',
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
                  !_isClient
                      ? Opacity(
                          opacity: 0.5,
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
                        )
                      : Opacity(
                          opacity: 1,
                          child: Text(
                            ' كلمـــــــة الـــــسر',
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
      ),
    );
  }
}
