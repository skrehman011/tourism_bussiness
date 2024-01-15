import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/screens/screen_change_password.dart';

class ScreenSettings extends StatefulWidget {

  @override
  State<ScreenSettings> createState() => _ScreenSettingsState();
}

class _ScreenSettingsState extends State<ScreenSettings> {
  bool notification= true;

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
        title: Text('Setting', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.notifications_none_outlined, color: appColor,),
            title: Text('Notification',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15
            ),),
            trailing: Switch(value: notification,
              onChanged: (bool value) {
              setState(() {
                notification = value;
              });
              },),
          ).marginOnly(top: 15),
          Divider(thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          ListTile(
            onTap: (){
              Get.to(ScreenChangePassword());
            },
            leading: Icon(Icons.password, color: appColor,),
            title: Text('Change Password',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15
            ),),

          ),
          Divider(thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.event_note, color: appColor,),
            title: Text('Terms and Conditions',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15
            ),),
          ),
          Divider(thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.logout, color: appColor,),
            title: Text('Logout',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15
            ),),
          ),
          Divider(thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
