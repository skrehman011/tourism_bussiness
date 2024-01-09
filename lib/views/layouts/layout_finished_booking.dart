import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/models/booking.dart';
import 'package:tourism_bussiness/views/layouts/item_booking.dart';
import 'package:tourism_bussiness/views/screens/screen_booking_detail.dart';
import 'package:tourism_bussiness/views/screens/screen_home_page.dart';

class LayoutFinishedBooking extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ScreenBookingDetail());
      },
      child: ListView.builder(
        itemCount: bookingList.length,
        itemBuilder: (BuildContext context, int index) {
          var booking=bookingList[index];

          return ItemBooking(booking: booking,);
        },),
    );
  }
}
