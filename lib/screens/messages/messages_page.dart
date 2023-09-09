import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/data/controllers/messages_controller.dart';
import 'package:warsha/data/models/message_model.dart';
import 'package:warsha/utils/message_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({super.key});

  TextEditingController _txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<MessageModel> messages = [
      MessageModel(
          senderId: "1",
          convId: "1",
          message:
              "Hey, I can do the project you’ve posted .check my portfolio",
          sentAt: DateTime(2023, 9, 3, 9, 30).toString()),
      MessageModel(
          senderId: "2",
          convId: "1",
          message: "Okey, I’ll check it.",
          sentAt: DateTime(2023, 9, 3, 9, 32).toString()),
      MessageModel(
          senderId: "1",
          convId: "1",
          message: "That's perfect. ",
          sentAt: DateTime(2023, 9, 4, 14, 50).toString()),
      MessageModel(
          senderId: "1",
          convId: "1",
          message:
              "I like your works; I’ll send you more details about the project.",
          sentAt: DateTime(2023, 9, 3, 15, 0).toString())
    ];
    return Scaffold(
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
                    image: const DecorationImage(
                        image: AssetImage("images/arts1.png"),
                        fit: BoxFit.cover),
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
        body: GetBuilder<MessagesController>(builder: (_mssgController) {
          return Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.5))),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: Dimension.height20,
                      ),
                      color: Colors.black,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            right: Dimension.height20,
                            left: Dimension.height10 / 2),
                        height: Dimension.height10 * 4,
                        width: Dimension.height10 * 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/Bitmap.png"),
                                fit: BoxFit.cover),
                            color: Colors.white,
                            shape: BoxShape.circle)),
                    Text(
                      "Username",
                      style: TextStyle(
                          fontSize: Dimension.height10 * 1.7,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Expanded(child: GetBuilder<AuthController>(builder: (_) {
                return GroupedListView<MessageModel, DateTime>(
                  padding: EdgeInsets.all(Dimension.height10),
                  shrinkWrap: true,
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  elements: messages,
                  groupBy: (message) => DateTime(
                      DateTime.tryParse(message.sentAt!)!.year,
                      DateTime.tryParse(message.sentAt!)!.month,
                      DateTime.tryParse(message.sentAt!)!.day),
                  groupHeaderBuilder: (element) => SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        DateFormat('dd/MM/yyyy')
                            .format(DateTime.tryParse(element.sentAt!)!),
                        style: const TextStyle(
                            color: Colors.black54, fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  itemBuilder: (context, element) => Align(
                      alignment: element.senderId == "1"
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: MessageWidget(
                        send: element.senderId == "1",
                        txt: element.message!,
                      )),
                );
              })),
              Container(
                margin: EdgeInsets.only(bottom: Dimension.height10 / 2),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: AppColors.mainColor,
                        )),
                    Container(
                      height: Dimension.height10 * 3.5,
                      width: Dimension.height10 * 26,
                      child: TextField(
                          controller: _txtController,
                          cursorColor: AppColors.mainColor,
                          maxLines: 4,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: Dimension.height10 * 1.5,
                                  left: Dimension.height10 * 1.2),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.mainColor),
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: "Message",
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle),
                                    child: SvgPicture.asset(
                                      "images/voiceMssgIcon.svg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: Dimension.height10,
                                        right: Dimension.height10 * 1.5),
                                    child: SvgPicture.asset(
                                      "images/imageIcon.svg",
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                    IconButton(
                        onPressed: () {
                          _mssgController.sendMessage({
                            "convId": _mssgController.currConv!.id,
                            "senderId":
                                Get.find<AuthController>().loggedUsr!.userId,
                            "message": _txtController.text.trim()
                          });
                        },
                        icon: Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainColor),
                            child: SvgPicture.asset(
                              "images/paperPlaneIcon.svg",
                              fit: BoxFit.scaleDown,
                            )))
                  ],
                ),
              ),
            ],
          );
        }));
  }
}
