import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.background,
      required this.textColor,
      this.borderRadius,
      this.fontSize});
  final String text;
  final Color background;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: background,
              shape: RoundedRectangleBorder(borderRadius: borderRadius!)),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
