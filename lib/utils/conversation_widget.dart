import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

class ConversationWidget extends StatelessWidget {
  final String username;
  final String lastText;
  final String time;
  final String img;
  final bool unread;

  const ConversationWidget(
      {super.key,
      required this.username,
      required this.lastText,
      required this.time,
      required this.img,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.screenWidth,
      height: Dimension.height10 * 8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          unread
              ? Container(
                  margin: EdgeInsets.only(left: Dimension.height10),
                  height: Dimension.height10,
                  width: Dimension.height10,
                  decoration: BoxDecoration(
                      color: AppColors.unreadMssgColor, shape: BoxShape.circle),
                )
              : Container(
                  margin: EdgeInsets.only(left: Dimension.height10),
                  height: Dimension.height10,
                  width: Dimension.height10,
                  decoration: const BoxDecoration(
                      color: Colors.transparent, shape: BoxShape.circle),
                ),
          Container(
              margin: EdgeInsets.only(
                  right: Dimension.height20, left: Dimension.height10 / 2),
              height: Dimension.height10 * 4.5,
              width: Dimension.height10 * 4.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                  color: Colors.white,
                  shape: BoxShape.circle)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Dimension.height10 * 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: Dimension.height10 * 15,
                      child: Text(
                        username,
                        style: TextStyle(
                            fontSize: Dimension.height10 * 1.7,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: Dimension.height10 * 4,
                    ),
                    Container(
                      child: Text(
                        time,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: Dimension.height10 * 20,
                child: Text(lastText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey[500])),
              )
            ],
          )
        ],
      ),
    );
  }
}
