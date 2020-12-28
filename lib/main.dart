import 'package:flutter/material.dart';
import 'package:meditaion_app/auths/otp_page.dart';
import 'package:meditaion_app/auths/selectTopic.dart';
import 'package:meditaion_app/auths/sign_in.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/onboarding_screen/launch_page.dart';
import 'package:meditaion_app/screens/navscreen.dart';
import 'package:meditaion_app/widget/organism/homepage/homepage_screen.dart';
import 'package:meditaion_app/widget/organism/open_up.dart';
import 'package:meditaion_app/widget/organism/open_upconv.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavScreen(),
    );
  }
}


