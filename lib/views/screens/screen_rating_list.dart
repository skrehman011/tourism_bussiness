import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';

class ScreenRatingList extends StatelessWidget {
  const ScreenRatingList({Key? key}) : super(key: key);

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
        title: Text('My Rating', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
          decoration: BoxDecoration(
            boxShadow: appBoxShadow,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
            child: Row(
              children: [
                Container(
                  height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                    ),
                    child: CustomImage(name: 'Ellipse',fit: BoxFit.cover,)).paddingAll(5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),),
                    Text('Review description', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Icon(Icons.star_border, color: Colors.grey,),
                      Icon(Icons.star_border, color: Colors.grey,),
                      Icon(Icons.star_border, color: Colors.grey,)
                    ],)
                  ],
                ).marginSymmetric(horizontal: 10)
              ],
            ),
          ).marginSymmetric(horizontal: 15, vertical: 10);

        },),
    );
  }
}
