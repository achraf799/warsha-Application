import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:warsha/data/controllers/messages_controller.dart';
import 'package:warsha/screens/Page01.dart';
import 'package:warsha/screens/Page02.dart';
import 'package:warsha/screens/messages/messages_page.dart';
import 'package:warsha/utils/colors.dart';
import 'package:warsha/utils/conversation_widget.dart';

import '../../utils/dimensions.dart';

class ConversationsPage extends StatelessWidget {
  const ConversationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [Page01(), Page02(), Page02()];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.activeBlue,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    return Scaffold(
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        isExtended: true,
        onPressed: () {},
        foregroundColor: Colors.yellow,
        backgroundColor: Colors.yellow,
        child: ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
                width: 200,
                //height: 50,
                color: Colors.white,
                child: Container(color: Colors.black, child: Icon(Icons.add)))),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        //notchMargin: 0,
        //shape: CircularNotchedRectangle(),
        child: Row(children: [
          Container(
            height: 50,
          )
        ]),
      ),*/
      appBar: AppBar(
        leadingWidth: Dimension.height10 * 13.5,
        actions: [
          Container(
              margin: EdgeInsets.only(right: Dimension.height20),
              height: Dimension.height10 * 4.5,
              width: Dimension.height10 * 4.5,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.mainColor,
                        offset: Offset(-2, 0),
                        blurRadius: 5),
                    BoxShadow(
                        color: AppColors.mainColor,
                        offset: Offset(2, 0),
                        blurRadius: 5),
                    BoxShadow(
                        color: AppColors.mainColor,
                        offset: Offset(0, 2),
                        blurRadius: 5),
                    BoxShadow(
                        color: AppColors.mainColor,
                        offset: Offset(0, -2),
                        blurRadius: 5)
                  ],
                  image: DecorationImage(
                      image: AssetImage("images/arts1.png"), fit: BoxFit.cover),
                  border: Border.all(color: AppColors.mainColor, width: 1.0),
                  color: Colors.white,
                  shape: BoxShape.circle))
        ],
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
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Color.fromARGB(186, 213, 110, 59)
                ])),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimension.height10,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                      left: Dimension.height20,
                      right: Dimension.height20,
                      top: Dimension.height10 / 2),
                  alignment: Alignment.centerLeft,
                  width: Dimension.height10 * 30,
                  height: Dimension.height10 * 3.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.height10),
                      color: const Color(0x1e767680)),
                  child: const TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "Search",
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                height: 400,
                child:
                    GetBuilder<MessagesController>(builder: (_mssgController) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: _mssgController.conversations.length,
                      itemBuilder: (builder, index) {
                        return GestureDetector(
                          onTap: () {
                            _mssgController.setCurrConv =
                                _mssgController.conversations[index];
                            Get.to((() => MessagesPage()));
                          },
                          child: ConversationWidget(
                            username: _mssgController
                                .conversations[index].otherUsr!.name!,
                            lastText:
                                "Nice. I don't know why people get all worked up about hawaiian pizza. I ...",
                            img: "images/Bitmap.png",
                            unread: true,
                            time: "11:00 PM",
                          ),
                        );
                      });
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height); // Starting point at bottom-left
    path.lineTo(0,
        size.height * 0.8); // Move to the left edge, slightly above the bottom

    // Define the arc
    path.arcToPoint(
      Offset(size.width, size.height * 0.8), // Ending point
      radius: Radius.elliptical(size.width, 100), // Elliptical radius
      clockwise: true, // Counter-clockwise direction to create a convex shape
    );

    path.lineTo(size.width, size.height); // Line to the bottom-right
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
