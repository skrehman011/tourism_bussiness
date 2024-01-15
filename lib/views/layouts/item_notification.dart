import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Notification', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),),
      ),
      body: Column(
        children: [
          Container(
              height: 70.sp,
            decoration: BoxDecoration(
              boxShadow: appBoxShadow,
              color: Colors.white
            ),
            child: ListTile(
              title: Text('Review'),
              subtitle: Text('Alex Jack give you a review', overflow: TextOverflow.ellipsis,),
              trailing: Icon(Icons.mail_outline_rounded,color: appColor,),
            ),
          ).marginSymmetric(horizontal: 15, vertical: 20),
          Container(
            height: 70.sp,
            decoration: BoxDecoration(
              boxShadow: appBoxShadow,
              color: Colors.white
            ),
            child: ListTile(
              title: Text('Booking'),
              subtitle: Text('You have a new booking from Alex Jack on 07 Dec 2021.',
              overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              trailing: Icon(Icons.mark_email_read_outlined,color: Colors.grey,),
            ),
          ).marginSymmetric(horizontal: 15, ),
        ],
      ),
    );
  }
}
