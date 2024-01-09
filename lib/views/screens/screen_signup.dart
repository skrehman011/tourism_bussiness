import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/views/screens/screen_login.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_social_button.dart';
import '../../widgets/my_input_feild.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back, color: Colors.black),
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('SignUp',
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
            Text("Let's Get It Started",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                )),
            MyInputField(
              height: 50,
              hint: 'First Name',
            ).marginSymmetric(vertical: 20),
            MyInputField(
              height: 50,
              hint: 'Last Name',
            ),
            MyInputField(
              height: 50,
              hint: 'Email',
            ).marginSymmetric(vertical: 20),
            MyInputField(
              height: 50,
              isPasswordField: true,
              hint: 'password',
            ),
            CustomButton(
              text: 'Signup',
              onTap: () {
                Get.to(ScreenHomePage());
              },
            ).marginSymmetric(vertical: 20),
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
                    text: "Already have an account ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(text: "|"),
                      TextSpan(
                        text: " Login",
                        style: TextStyle(color: Color(0xFF2FB8A6)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(ScreenLogin()),
                      ),
                    ])).marginOnly(top: 50),
          
          ]).marginSymmetric(vertical: 20, horizontal:15),
        ));
  }
}
