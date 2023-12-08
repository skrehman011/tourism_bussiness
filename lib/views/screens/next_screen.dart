import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';

class NextScreen extends StatelessWidget {
String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Necr"),
    ),
    body: Column(children: [
      CustomButton(text: text, onTap: (){},
      width: Get.width*.5,
        hieght: 50,
      )
    ],),
    );
  }

NextScreen({
    required this.text,
  });
}
