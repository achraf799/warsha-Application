import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 84,
        height: 35,
        margin: const EdgeInsets.only(left: 308, top: 821),
        decoration: BoxDecoration(
          color: const Color(0xFFD56E3B),
          boxShadow: const [BoxShadow(offset: Offset(-2, 0), blurRadius: 13, color: Color(0xFFD56E3B))],
          borderRadius: BorderRadius.circular(24.5),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
