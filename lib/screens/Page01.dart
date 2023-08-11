import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Page02.dart';
import 'WarshaIntro/SkipButton.dart';
import 'WarshaIntro/screen1.dart';
import 'WarshaIntro/screen2.dart';
import 'WarshaIntro/screen3.dart';
import 'WarshaIntro/screen4.dart';



class Page01 extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F3),
      appBar: AppBar(
        leadingWidth: 135,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          child: Image.asset('images/logo2.png',),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              screen1(),
              screen2(),
              screen3(),
              screen4(),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SkipButton(
                  buttonText: 'تخطي',
                  nextPage: Page02(),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.page != 3) {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page02()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.045,
                      vertical: MediaQuery.of(context).size.height * 0.006,
                    ),
                    primary: Color(0xFFD56E3B),
                    shadowColor: Color(0xFFD56E3B),
                    elevation: 13,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.5),
                    ),
                  ),
                  child: Text(
                    'التالي',
                    style: TextStyle(
                      fontFamily: 'Lalezar',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 1.05,
            left: MediaQuery.of(context).size.width * 0.35,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey,
                  activeDotColor: Color(0xFF190B28),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
