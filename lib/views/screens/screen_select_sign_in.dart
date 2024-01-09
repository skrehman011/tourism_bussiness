import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/views/screens/screen_login.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';
import 'package:tourism_bussiness/widgets/small_text.dart';

class ScreenSelectSignIn extends StatelessWidget {
  const ScreenSelectSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            CustomSvg(name: "Select",),
            Spacer(),
            LargeText(text: "Grow Your Business"),
            SmallText(text: "Provide best deal and services to grow your business."),
           Spacer(),
            CustomButton(text: "Login", onTap: (){
              Get.offAll(ScreenLogin());
            }),
            CustomButton(text: "Create Account", onTap: (){},buttonColor: Colors.white,textColor: Colors.black,).marginSymmetric(vertical: 30),
           Spacer()
        ],).marginSymmetric(horizontal: 40,),
      ),
    );
  }
}
