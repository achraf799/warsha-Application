import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:warsha/utils/colors.dart';
import 'package:warsha/utils/dimensions.dart';

class MessageWidget extends StatelessWidget {
  final bool send;
  final String txt;
  const MessageWidget({super.key, required this.send, required this.txt});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: send
          ? LowerNipMessageClipper(MessageType.send)
          : LowerNipMessageClipper(MessageType.receive),
      child: Container(
        width:
            txt.length > 50 ? Dimension.height10 * 30 : Dimension.height10 * 17,
        padding: EdgeInsets.only(
            top: Dimension.height10,
            left: Dimension.height20,
            right: Dimension.height20,
            bottom: Dimension.height20),
        decoration: BoxDecoration(
          color: send ? AppColors.mainColor : Colors.grey[300],
        ),
        child: Text(
          txt,
          maxLines: 10,
          style: TextStyle(
              color: send ? Colors.white : Colors.black,
              fontSize: Dimension.height10 * 1.5,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
