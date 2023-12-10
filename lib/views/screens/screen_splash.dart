import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/screens/screen_login.dart';
import 'package:tourism_bussiness/views/screens/screen_select_sign_in.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';
import 'package:tourism_bussiness/widgets/small_text.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/images/splash_bg.png"),
           fit: BoxFit.cover
         )
        ),
        child: SafeArea(
          child: Column(children: [
            CustomImage(name:"logo"),
            LargeText(text: "Tourism",textColor: appColor,),
            Spacer(),
            CustomButton(text: "Get Started", onTap: (){
              Get.to(ScreenSelectSignIn());
            },
            width: Get.width*.7,
            ),
            RichText(

                text: TextSpan(
              text: "Already have an account ",
             recognizer: TapGestureRecognizer()..onTap=()=>Get.to(ScreenLogin()),

             children: [
               TextSpan(text: "|"),
               TextSpan(text: " Login"),

             ]
            )
            ).marginSymmetric(vertical: 30),


          ],).paddingSymmetric(horizontal: 20,vertical: 30),
        ),
      )
    );
  }
}
