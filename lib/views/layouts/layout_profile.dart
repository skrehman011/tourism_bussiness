import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/layouts/item_notification.dart';
import 'package:tourism_bussiness/views/screens/screen_account_detail.dart';
import 'package:tourism_bussiness/views/screens/screen_help.dart';
import 'package:tourism_bussiness/views/screens/screen_rating_list.dart';
import 'package:tourism_bussiness/views/screens/screen_settings.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';

import '../../widgets/custom_svg.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CustomImage(
                name: 'bg',
              ),
              Positioned(
                left: 120,
                top: 80,
                bottom: 0,
                right: 0,
                child: Text(
                  'App Logo',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 50,
                  child: Stack(children: [
                    GestureDetector(
                        onTap: (){
                          Get.to(ItemNotification());
                        },
                        child: Icon(Icons.notifications_none)),
                      Positioned(
                          left: 10,
                          right: 0,
                          top: 0,
                          bottom: 5,
                          child: Container(
                        height: 1,
                        width: 1,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ))
                      ])),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 180),
                child: Container(
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                    child: CustomImage(name: 'Ellipse',fit: BoxFit.cover,),
                  ),
                ),
              ),

            ],
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: appBoxShadow,
            ),
            child: ListTile(
              onTap: (){
                Get.to(ScreenAccountDetail());
              },
              leading: Icon(Icons.account_circle_outlined, color: appColor, size: 40,),
              title: Text('My Account'),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 25,),
            ),
          ).marginSymmetric(horizontal: 30, vertical: 20),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: appBoxShadow,
            ),
            child: ListTile(
              onTap: (){
                Get.to(ScreenSettings());
              },
              leading: Icon(Icons.settings, color: appColor, size: 40,),
              title: Text('Setting'),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 25,),
            ),
          ).marginSymmetric(horizontal: 30, ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: appBoxShadow,
            ),
            child: ListTile(
              onTap: (){
                Get.to(ScreenRatingList());
              },
              leading: Icon(Icons.star, color: appColor, size: 40,),
              title: Text('My Rating'),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 25,),
            ),
          ).marginSymmetric(horizontal: 30, vertical: 20),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: appBoxShadow,
            ),
            child: ListTile(
              onTap: (){
                Get.to(ScreenHelp());
              },
              leading: Icon(Icons.help_outline_outlined, color: appColor, size: 40,),
              title: Text('Help'),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 25,),
            ),
          ).marginSymmetric(horizontal: 30,),
        ],
      ),
    );
  }
}
