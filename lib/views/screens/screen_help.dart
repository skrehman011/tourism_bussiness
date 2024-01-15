import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';

class ScreenHelp extends StatelessWidget {
  const ScreenHelp({Key? key}) : super(key: key);

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
        title: Text('Help', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              boxShadow: appBoxShadow,
                color: Colors.white
              ),
              child: Column(
                children: [
                  Text('Enter Details', style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),).marginSymmetric(vertical: 15),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintText: 'Your Email',
                      hintStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                  ).marginSymmetric(vertical: 10),
                  Container(
                    padding: EdgeInsets.all(5.sp),
                    height: 150.sp,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Description',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                  CustomButton(text: 'Send', onTap: (){}).marginSymmetric(horizontal: 30, vertical: 25)
                ],
              ).marginSymmetric(horizontal: 15, vertical: 10),
            ).marginSymmetric(horizontal: 15, vertical: 10),
            Divider(thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ).marginOnly(top: 25, bottom: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text('We Are Available On', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),).marginSymmetric(vertical: 5, horizontal: 15),
            ),
            ListTile(
              leading: CustomSvg(name: 'www',),
              title: Text(
                'www.slc@gmail.com'
              ),
            ),
            ListTile(
              leading: CustomSvg(name: 'gmail',),
              title: Text(
                'www.slc.com'
              ),
            ),
            ListTile(
              leading: CustomSvg(name: 'apple',),
              title: Text(
                '+923019288011'
              ),
            ),

          ],
        ),
      ),
    );
  }
}
