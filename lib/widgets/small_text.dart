import 'package:flutter/material.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';

class SmallText extends StatelessWidget {
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: subtile2.copyWith(color: Colors.white),
    );
  }

  SmallText({
    required this.text,
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
