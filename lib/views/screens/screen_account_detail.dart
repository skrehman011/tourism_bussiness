import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_image.dart';

class ScreenAccountDetail extends StatelessWidget {
  const ScreenAccountDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Booking Details', style: TextStyle(
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
            Container(
              height: 200,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/hotel.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Grand Royal Hotel', style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.white
                ),).marginOnly(left: 10, bottom: 10),
              ),
            ).marginSymmetric(horizontal: 15, vertical: 10),
            // Adjust the spacing between image and text// Text below the image
            ListTile(
              title: Text(
                'Person Name',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                ),
              ),
              subtitle: Text(
                '123@gamil.com',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),
              ),
              trailing: CircleAvatar(
                radius: 35,
                child: CustomImage(name: 'profile',),
              ),
            ),
            ListTile(

              title: Text(
                'Booking From',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '26 Aug, 2024',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ).marginOnly(top: 10),
            Divider(height: .5,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Booking To',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '02 Sep, 2024',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(height: .5,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Number of rooms',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '1',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(height: .5,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Adults (age 15+)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '2',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(height: .5,
              thickness: 1,
            ),
            ListTile(
              title: Text(
                'Children (age 0 to 15)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '0',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Divider(height: .5,
              thickness: 1,
            ),
          ],
        ),
      ).marginOnly(top: 10, bottom: 20),
    );
  }
}
