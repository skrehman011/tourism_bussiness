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
