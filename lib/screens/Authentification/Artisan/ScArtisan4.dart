import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:warsha/screens/CustomButton.dart';
import '../../Page02.dart';
import '../../WarshaIntro/SkipButton.dart';
import 'ScArtisan2.dart';

class ScArtisan4 extends StatefulWidget {
  @override
  _ScArtisan4State createState() => _ScArtisan4State();
}

class _ScArtisan4State extends State<ScArtisan4> {
  final _controller = PageController();
int selected = 0;
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
          final screenHeight = MediaQuery
              .of(context)
              .size
              .height;
          final screenWidth = MediaQuery
              .of(context)
              .size
              .width;

          return Stack(
            children: [
              Positioned(
                top: screenHeight * 0.05,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'ماهي حرفتك ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.48,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.12,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: 338,
                    height: 55,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                        '.يرجى إختيار الحرفة الرئيسية لك والذي تود العمل فيها',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF190B28),
                          fontSize: 18,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.2,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    height: screenHeight*0.53,
                    width: screenWidth*01,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectBtn(
                            title: ':ميكانيـــكي مركبات ',
                            description: 'إصلاح وصيانة المركبات والمعدات الثقيلة والصناعية. يتضمن ذلك التشخيص وإصلاح الأعطال الميكانيكية والكهربائية والإلكترونية',
                            index: 1,
                            selected: selected,
                            onPressed: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            image: AssetImage('images/arts1.png'),
                           ),
                          SelectBtn(
                            title: 'Title 2',
                            description: 'Description 2',
                            index: 2,
                            selected: selected,
                            onPressed: () {
                              setState(() {
                                selected = 2;
                              });
                            },

                            image: AssetImage('images/arts2.png'),
                          ),
                          SelectBtn(
                            title: 'Title 3',
                            description: 'Description 3',
                            index: 3,
                            selected: selected,
                            onPressed: () {
                              setState(() {
                                selected = 3;
                              });
                            },
                            image: AssetImage('images/arts3.png'),
                          ),
                          SelectBtn(
                            title: 'Title 4',
                            description: 'Description 4',
                            index: 4,
                            selected: selected,
                            onPressed: () {
                              setState(() {
                                selected = 4;
                              });
                            },
                            image: AssetImage('images/arts4.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: screenHeight * 0.75,
                left: screenHeight * 0.25,
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
                top: screenHeight * 0.83,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  child: LinearPercentIndicator(
                    width: screenWidth * 0.98,
                    lineHeight: screenHeight * 0.01,
                    percent: 0.5,
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
                  'كلمـــــــة الـــــسر',
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

}
class SelectBtn extends StatelessWidget {
  final String title;
  final String description;
  final int index;
  final int selected;
  final Function() onPressed;
  final ImageProvider image;

  const SelectBtn({
    required this.title,
    required this.description,
    required this.index,
    required this.selected,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0), // Adjust the value as needed
      child: Container(
        width: 387,
        height: 122,
        decoration: ShapeDecoration(
          color: Color(0xFFE9E5E4),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 4,
              color: (selected == index) ? Color(0xFFD56E3B) : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: [
            if (selected == index)
              BoxShadow(
                color: Color(0xB2D56E3B),
                blurRadius: 24,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
          ],
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            side: BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: SizedBox(
                  width: 104,
                  height: 104,
                  child: Image(
                    fit: BoxFit.cover,
                    image: image,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFD56E3B),
                      fontSize: 21,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 224,
                    height: 50,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        description,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF190B28),
                          fontSize: 12,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
