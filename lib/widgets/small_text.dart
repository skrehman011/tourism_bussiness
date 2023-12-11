import 'package:flutter/material.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';

class SmallText extends StatelessWidget {
  String text;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textColor ?? Colors.grey
      ),
      textAlign: TextAlign.center,
    );
  }

  SmallText({
    required this.text,
    this.textColor,
  });
}
class LargeText extends StatelessWidget {
  String text;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 26,
          color:textColor ?? Colors.black,
          fontFamily: "Kailasa"),
    );
  }

  LargeText({
    required this.text,
     this.textColor,
  });
}
