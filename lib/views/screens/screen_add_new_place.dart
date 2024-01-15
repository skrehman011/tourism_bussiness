import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_bussiness/helpers/constants/colors.dart';
import 'package:tourism_bussiness/widgets/custom_button.dart';
import 'package:tourism_bussiness/widgets/custom_svg.dart';
import 'package:tourism_bussiness/widgets/my_input_feild.dart';

class ScreenAddNewPlace extends StatefulWidget {
  const ScreenAddNewPlace({Key? key}) : super(key: key);

  @override
  _ScreenAddNewPlaceState createState() => _ScreenAddNewPlaceState();
}

class _ScreenAddNewPlaceState extends State<ScreenAddNewPlace> {
  String selectedDropdownValue = 'Option 1'; // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Place',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 114,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSvg(name: 'image'),
                  Text(
                    'Add images',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ).marginSymmetric(horizontal: 20, vertical: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Add Details',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: appColor,
                ),
              ),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                labelText: 'Location Name',
                floatingLabelStyle: TextStyle(
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.grey), // Optional: Customize label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when focused
                ),
              ),
            ).marginSymmetric(vertical: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Price',
                      floatingLabelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelStyle: TextStyle(color: Colors.grey), // Optional: Customize label text color
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black), // Border color when not focused
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black), // Border color when focused
                      ),
                    ),
                  ).marginOnly(right: 7),
                ),
                Container(
                  width: 150,
                  height: 67,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: null,
                      isExpanded: true,
                      value: selectedDropdownValue,
                      items: ['Option 1', 'Option 2', 'Option 3']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedDropdownValue = newValue!;
                        });
                      },
                    ),
                  ),
                ).marginOnly(left: 7),
              ],
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                labelText: 'Available Rooms',
                floatingLabelStyle: TextStyle(
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.grey), // Optional: Customize label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when focused
                ),
              ),
            ).marginSymmetric(vertical: 15),
            TextField(
              maxLines: null,
              decoration: InputDecoration(
                labelText: 'Available Rooms',
                hintText: 'text here...',
                floatingLabelStyle: TextStyle(
                  color: Colors.black,
                ),
                labelStyle: TextStyle(color: Colors.grey), // Optional: Customize label text color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black), // Border color when focused
                ),
              ),
            ).marginSymmetric(vertical: 15),
            CustomButton(text: 'Upload', onTap: (){
              Get.defaultDialog(
                title: '',
                content: Column(
                  children: [
                    Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: appColor
                        ),
                        child: Icon(Icons.check, color: Colors.white, size: 50,)),
                    Text('Uploaded Successfully', style: TextStyle(
                      color: appColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18
                    ),).marginSymmetric(vertical: 25)
                  ],
                )
              );
            })
          ],
        ).marginSymmetric(horizontal: 30),
      ),
    );
  }
}
