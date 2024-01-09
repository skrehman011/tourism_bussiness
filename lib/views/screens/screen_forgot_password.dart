import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/views/screens/screen_o_t_p.dart';
import 'package:tourism_bussiness/views/screens/screen_signup.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_social_button.dart';
import '../../widgets/my_input_feild.dart';

class ScreenForgotPassword extends StatelessWidget {


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
            child: Text('Forget Password',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Enter Your Email To Reset Password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
          ).marginOnly(top: 20),
          MyInputField(
            height: 50,
            hint: 'Email',
          ).marginSymmetric(vertical: 50),
          CustomButton(
            text: 'Send',
            onTap: () {
              Get.to(ScreenOTP());
            },
          ),




        ]).marginSymmetric(vertical: 20, horizontal:15));
  }
}
