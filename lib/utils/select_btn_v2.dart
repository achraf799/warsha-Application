import 'package:flutter/material.dart';

import 'dimensions.dart';

class SelectBtnV2 extends StatelessWidget {
  final String title;
  final String description;
  final int index;
  final int selected;
  final Function() onPressed;
  final ImageProvider image;

  const SelectBtnV2({
    required this.title,
    required this.description,
    required this.index,
    required this.selected,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: 15.0), // Adjust the value as needed
      child: Container(
        width: Dimension.height10 * 32,
        height: Dimension.height10 * 12.2,
        decoration: ShapeDecoration(
          color: const Color(0xFFE9E5E4),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 4,
              color: (selected == index)
                  ? const Color(0xFFD56E3B)
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(Dimension.height10 * 3.2),
          ),
          shadows: [
            if (selected == index)
              const BoxShadow(
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
              borderRadius: BorderRadius.circular(Dimension.height10 * 2.7),
            ),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: SizedBox(
                  width: Dimension.height10 * 9,
                  height: Dimension.height10 * 9,
                  child: Image(
                    fit: BoxFit.cover,
                    image: image,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFFD56E3B),
                      fontSize: Dimension.height10 * 2.1,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: Dimension.height10 * 20,
                    height: Dimension.height10 * 5,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        description,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF190B28),
                          fontSize: Dimension.height10 * 1.2,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                        ),
                        textDirection: TextDirection.rtl,
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
