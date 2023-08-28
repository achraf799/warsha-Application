import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/routes/route_helper.dart';
import 'package:warsha/utils/dimensions.dart';
import 'Page02.dart';
import 'WarshaIntro/SkipButton.dart';
import 'WarshaIntro/screen1.dart';
import 'WarshaIntro/screen2.dart';
import 'WarshaIntro/screen3.dart';
import 'WarshaIntro/screen4.dart';

class Page01 extends StatelessWidget {
  final _controller = PageController();

  Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F3),
      appBar: AppBar(
        leadingWidth: Dimension.height10 * 13.5,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: Dimension.height10),
          child: SvgPicture.asset(
            'images/logo02.svg',
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Positioned(
            bottom: Dimension.screenHeight * 0.04,
            right: Dimension.screenWidth * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SkipButton(
                  buttonText: 'تخطي',
                  nextPage: RouteHelper.getPage02(),
                  onTap: () {
                    Get.put(AuthController(authRepo: Get.find()));
                  },
                ),
                SizedBox(width: Dimension.screenWidth * 0.02),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.page != 3) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Get.toNamed(RouteHelper.getPage02());
                      Get.put(AuthController(authRepo: Get.find()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimension.screenWidth * 0.045,
                      vertical: Dimension.screenHeight * 0.006,
                    ),
                    backgroundColor: const Color(0xFFD56E3B),
                    shadowColor: const Color(0xFFD56E3B),
                    elevation: 13,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimension.height10 * 2.45),
                    ),
                  ),
                  child: Text(
                    'التالي',
                    style: TextStyle(
                      fontFamily: 'Lalezar',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: Dimension.screenWidth * 0.06,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: Dimension.screenHeight * 1.05,
            left: Dimension.screenWidth * 0.35,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.screenWidth * 0.02,
              ),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  dotHeight: Dimension.height10,
                  dotWidth: Dimension.height10,
                  dotColor: Colors.grey,
                  activeDotColor: const Color(0xFF190B28),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
