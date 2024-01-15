import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';

import '../../widgets/custom_image.dart';

class ScreenAccountDetail extends StatelessWidget {
  const ScreenAccountDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('My Account', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Stack(
             children: [
               Center(
                 child: CircleAvatar(
                   radius: 60,
                   backgroundColor: Colors.white ,
                   child: CustomImage(name: 'Ellipse',),

                 ),
               ),
               Positioned(
                   top: 30,
                   bottom: 0,
                   left: 120.sp,
                   right: 0,
                   child: Icon(Icons.camera_alt))
             ],
           ).marginSymmetric(vertical: 10),
            ListTile(
              title: Text('Name',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.grey
              ),
              ),
              subtitle: Text('Khalil Ur Rehman',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              trailing: Text('Edit', style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: appColor
              ),),
            ).marginSymmetric(horizontal: 10),
            Divider(thickness: 0.5,
            height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Email',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),
              subtitle: Text('Khalil@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              trailing: Text('Edit', style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: appColor
              ),),
            ).marginSymmetric(horizontal: 10),
            Divider(thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            )
          ],
        ),
      ).marginOnly(top: 10, bottom: 20),
    );
  }
}
