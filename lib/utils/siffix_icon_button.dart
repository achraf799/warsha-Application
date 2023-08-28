import 'package:flutter/material.dart';

class SuffixIconButton extends StatefulWidget {
  final Icon icon;
  final Function onPressed;

  const SuffixIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  _SuffixIconButtonState createState() => _SuffixIconButtonState();
}

class _SuffixIconButtonState extends State<SuffixIconButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        widget.onPressed();
      },
      color: _isPressed ? Colors.black38 : Colors.transparent,
    );
  }
}
