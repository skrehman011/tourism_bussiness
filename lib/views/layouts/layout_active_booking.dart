import 'package:flutter/material.dart';
import 'package:tourism_bussiness/models/booking.dart';
import 'package:tourism_bussiness/views/layouts/item_booking.dart';

class LayoutActiveBooking extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookingList.length,
      itemBuilder: (BuildContext context, int index) {
        var booking=bookingList[index];

      return ItemBooking(booking: booking,);
    },);
  }
}
