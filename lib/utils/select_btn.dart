import 'package:flutter/material.dart';

import 'dimensions.dart';

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
      width: Dimension.height10 * 3.8,
      height: Dimension.height10 * 4.8,
      margin: const EdgeInsets.only(right: 5, left: 5),
      decoration: ShapeDecoration(
        color: const Color(0xFFE9E5E4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 3,
            color: getBorderColor(),
          ),
          borderRadius: BorderRadius.circular(Dimension.height10 * 2.25),
        ),
        shadows: [
          if (selected == 2 && selected == index)
            const BoxShadow(
              color: Colors.blue,
              blurRadius: 24,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          if (selected == 1 && selected == index)
            const BoxShadow(
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
            borderRadius: BorderRadius.circular(Dimension.screenWidth * 0.024),
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
              color: getColor(),
              size: Dimension.screenWidth * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
