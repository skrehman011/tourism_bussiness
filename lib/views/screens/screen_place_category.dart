import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/screens/screen_add_new_place.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';

class ScreenPlaceCategory extends StatelessWidget {
  const ScreenPlaceCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: (){
          Get.to(ScreenAddNewPlace());
        },
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {

            return Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: appBoxShadow,
                color: Colors.white
              ),
              child: ListTile(
                leading: Container(
                  height: 62,
                  width: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CustomImage(name: 'home',),
                ),
                title: Text('Hotel & Restaurant', style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black,
                ),),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: appColor,),
              ),
            ).marginSymmetric(vertical: 5);
          },).marginSymmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
