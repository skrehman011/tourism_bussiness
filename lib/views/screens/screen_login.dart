import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_forgot_password.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/views/screens/screen_signup.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_social_button.dart';
import '../../widgets/my_input_feild.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        )),
        body: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('login',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                )),
          ),
          Text('App Logo',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 23,
              )).marginSymmetric(vertical: 10),
          Text('Welcome back',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
              )),
          MyInputField(
            height: 50,
            hint: 'Email',
          ).marginSymmetric(vertical: 20),
          MyInputField(
            height: 50,
            isPasswordField: true,
            hint: 'password',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap:(){
                Get.to(ScreenForgotPassword());
              },
              child: Text('Forget Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  )),
            ),
          ).marginSymmetric(vertical: 20),
          CustomButton(
            text: 'Login',
            onTap: () {
              Get.to(ScreenHomePage());
            },
          ),
          Row(children: [
            Expanded(
              child: Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                  thickness: 0.5,
                  color: Colors.black),
            ),
            Text('or',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                )),
            Expanded(
              child: Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                  thickness: 0.5,
                  color: Colors.black),
            ),
          ]).marginSymmetric(vertical: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSocialButton(
                  text: 'Facebook',
                  onTap: () {},
                  buttonColor: Colors.blue,
                  icon: "facebook",
                ),
                CustomSocialButton(
                  text: 'Google',
                  onTap: () {},
                  buttonColor: Colors.black,
                  icon: "google",
                ),
              ]),
          RichText(
              text: TextSpan(
                  text: "Don't have an account ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                TextSpan(text: "|"),
                TextSpan(
                  text: " SignUp",
                  style: TextStyle(color: Color(0xFF2FB8A6)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(ScreenSignup()),
                ),
              ])).marginOnly(top: 70),

        ]).marginSymmetric(vertical: 20, horizontal:15));
  }
}
