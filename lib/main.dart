import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodseeds/controller/navbar_controller.dart';

import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNavBar(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: kPrimaryGreen,
        accentColor: kSecondGreen,
        textTheme: TextTheme(
          headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          subtitle1: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          subtitle2: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
