import 'package:flutter/material.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/widgets/custom_image.dart';

class ScreenPlacePhoto extends StatelessWidget {
  const ScreenPlacePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos', style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 11,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            mainAxisSpacing: 5
          ),
        itemBuilder: (BuildContext context, int index) {
            return CustomImage(name: 'sea', );
        }, ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Icon(Icons.edit, color: appColor,),
      ),
    );
  }
}
