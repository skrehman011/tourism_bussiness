import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_pinput/new_pinput.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';

class ScreenOTP extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSvg(name: 'OTP',),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Verification',
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
            ).marginOnly(top: 5, bottom: 20),
            Pinput(
              length: 4,
              autofocus: true,
              showCursor: true,
              obscureText: true,
              obscuringCharacter: '*',
        
            ),
            Text('Did not receive code?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.grey,
                )).marginOnly(top: 15, bottom: 20),
            Text('Resend',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: Color(0xFF2FB8A6),
                )),
            CustomButton(text: 'Done', onTap: (){
              Get.to(ScreenHomePage());
            }).paddingSymmetric(horizontal: 30,vertical: 10),
          ],
        ).marginSymmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}

