import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/constants/colors.dart';

class CustomSocialButton extends StatelessWidget {

  String text;
  String icon;
  Color? buttonColor;
  double? height, width;
  VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:  Container(
        alignment: Alignment.center,
        height: height ?? 45,
        width:Get.width *0.45,
        decoration: BoxDecoration(
          color: buttonColor ?? appColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Image.asset('assets/images/$icon.png' ),
            Text(text, style: TextStyle(
              color: Colors.white,
              fontSize:18,
              fontWeight: FontWeight.w400,
            ))
          ]
        )
      )
    );
  }

  CustomSocialButton({
    required this.text,
    required this.icon,
    required this.onTap,
    this.buttonColor,
    this.height,
    this.width,
});

}
