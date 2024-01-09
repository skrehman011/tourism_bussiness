import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/layouts/item_places.dart';
import 'package:tourism_bussiness/views/screens/screen_place_category.dart';
import 'package:tourism_bussiness/views/screens/screen_place_detail.dart';

class LayoutPlaces extends StatelessWidget {
  const LayoutPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Places',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: appColor,
                ))
          ],
        ),
        body: GestureDetector(
          onTap: (){
            Get.to(ScreenPlaceDetail());
          },
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ItemPlaces();
            },
          ),
        ),
    floatingActionButton: FloatingActionButton(onPressed: () {  },
      backgroundColor: appColor,
      child: IconButton(onPressed: () {
        Get.to(ScreenPlaceCategory());
      },
        icon: Icon(Icons.add),

      ),

    ),
    );
  }
}
