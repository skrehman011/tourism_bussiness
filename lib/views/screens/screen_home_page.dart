import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/views/screens/next_screen.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';
import 'package:tourism_bussiness/widgets/small_text.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: <Widget>[
          CustomSvg(name: "search"),
          CustomButton(text: "Sign up", onTap: (){
            Get.to(NextScreen(text: 'Login',));
          },),
          CustomImage(name: "hotel", ),
          SmallText(text: "Rama nanna "),
          SmallText(text: "Rama nanna "),
          Container(
            height: 20,
            child: Container(child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
              return CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/images/hotel.png"),);
            },),),
          )
        ],
      ),
    );
  }
}
