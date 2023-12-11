import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';

class CustomButton extends StatelessWidget {
 double? hieght;
 double? width;
 String text;
 Color? buttonColor;
 Color? textColor;
 VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        alignment: Alignment.center,
        height: hieght ?? 45 ,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:buttonColor ?? appColor,
          boxShadow: appBoxShadow
        ),
        child: Text(
          text,style: TextStyle(color: textColor??Colors.white,fontSize: 16,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

 CustomButton({
    this.hieght,
    this.width,
    required this.text,
    this.buttonColor,
    this.textColor,
    required this.onTap,
  });
}
