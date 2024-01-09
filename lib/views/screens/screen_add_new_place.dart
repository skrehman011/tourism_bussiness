import 'package:flutter/material.dart';

class ScreenAddNewPlace extends StatelessWidget {
  const ScreenAddNewPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Place', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
        ),
          centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              custom
            ),
          )
        ],
      ),
    );
  }
}
