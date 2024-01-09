import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:primer_progress_bar/primer_progress_bar.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/screens/screen_place_photo.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';

class ScreenPlaceDetail extends StatelessWidget {
  const ScreenPlaceDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImage(name: 'detail',
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Grand Royal\n'
                        'Park Hotel', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black
                    ),),
                    Row(
                      children: [
                        Text('Location Name', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black
                        ),),
                        Icon(Icons.location_pin, color: appColor, size: 17,),
                        Text('2 miles away', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.black
                        ),),
        
                      ],
                    ),
        
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$200', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: appColor
                    ),),
                    Text('per night', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Colors.black
                    ),),
        
                  ],
                ),
        
              ],
            ).marginSymmetric(horizontal: 15, vertical: 10),
            Text('Summery',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.black
            ),).marginSymmetric(horizontal: 15),
            Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black
            ),).marginSymmetric(horizontal: 15, vertical: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 174,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 5,
                  offset: Offset(0, 3)
                )]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('4.2', style: TextStyle(
                        color: appColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        
                      ),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,                      children: [
                          Text('Overall Rating', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),),
                          RatingBar.builder(
                            initialRating: 4.2,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemSize: 17,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),                      ],
                      ).marginSymmetric(horizontal: 10)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Place', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
        
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Services', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
        
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
        
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Quality', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
        
                    ],
                  ),
        
                ],
              ),
            ).marginSymmetric(horizontal: 15, vertical: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Photos',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black
                  ),).marginSymmetric(horizontal: 15),
                GestureDetector(
                  onTap: (){
                    Get.to(ScreenPlacePhoto());
                  },
                  child: Text('View all',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: appColor,
                    ),).marginSymmetric(horizontal: 15),
                ),
              ],
            ).marginOnly(top: 10, bottom: 5),
            SizedBox(
              height: 70,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 5),
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 95,
                    width: 95,
                    child: CustomImage(name: 'detailImage', fit: BoxFit.cover,),
                  );
                },),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black
                  ),).marginSymmetric(horizontal: 15),
                Text('View all',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: appColor,
                  ),).marginSymmetric(horizontal: 15),
              ],
            ).marginOnly(top: 10, bottom: 5),
            Divider(thickness: 0.5,
            height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: CustomImage(name: 'profile',),
              ),
              title: Text('User Name', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),),
              subtitle: Row(
                children: [
                  Text('21 June 2024', style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                  ),).marginOnly(right: 5),
                  Text('2:05 PM', style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                  ),),
                ],
              ),
              trailing: RatingBar.builder(
                initialRating: 4.2,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemSize: 15,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ).marginOnly(top: 10,bottom: 5),
            Text('Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black
              ),).marginSymmetric(horizontal: 15, vertical: 10),
            Divider(thickness: 0.5,
            height: 0.5,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: CustomImage(name: 'profile',),
              ),
              title: Text('User Name', style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),
              subtitle: Row(
                children: [
                  Text('21 June 2024', style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                  ),).marginOnly(right: 5),
                  Text('2:05 PM', style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                  ),),
                ],
              ),
              trailing: RatingBar.builder(
                initialRating: 4.2,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemSize: 15,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ).marginOnly(top: 10,bottom: 5),
            Text('Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black
              ),).marginSymmetric(horizontal: 15, vertical: 10),
            CustomImage(name: 'map',),
            CustomButton(text: 'Book Now', onTap: (){}).marginSymmetric(horizontal: 30, vertical: 10),
          ],
        ),
      )
    );
  }
}
