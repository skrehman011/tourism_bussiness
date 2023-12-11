import 'package:flutter/material.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/views/layouts/layout_active_booking.dart';
import 'package:tourism_bussiness/views/layouts/layout_finished_booking.dart';
import 'package:tourism_bussiness/views/layouts/layout_pending_booking.dart';

class LayoutBooking extends StatelessWidget {
  List<Widget> bookingLayouts = [
    LayoutActiveBooking(),
    LayoutPendingBooking(),
    LayoutFinishedBooking()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Booking"),
            actions: [Icon(Icons.search)],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(25)
                ),
                // color: Colors.red,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  unselectedLabelStyle: TextStyle(color: Colors.grey),

                  // indicatorPadding: EdgeInsets.symmetric(vertical:-7,horizontal: 4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Text("Active"),
                    Text("Pending"),
                    Text("Finished")
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: bookingLayouts,
          ),
        ));
  }
}
