import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';
import 'package:tourism_bussiness/widgets/my_input_feild.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Change Password',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: CustomImage(
              name: 'password',
            )).marginSymmetric(vertical: 20),
            MyInputField(
              padding: EdgeInsets.only(top: 15, left: 10),
              hint: 'Old Password',
              height: 50,
              isPasswordField: true,
            ),
            MyInputField(
              padding: EdgeInsets.only(top: 15, left: 10),
              isPasswordField: true,
              hint: 'New Password',
              height: 50,
            ).marginSymmetric(vertical: 10),
            MyInputField(
              padding: EdgeInsets.only(top: 15, left: 10),
              isPasswordField: true,
              hint: 'Confirm Password',
              height: 50,
            ),
            CustomButton(text: 'Change Password', onTap: () {})
                .marginSymmetric(horizontal: 30, vertical: 20)
          ],
        ).marginSymmetric(vertical: 10, horizontal: 15),
      ),
    );
  }
}
