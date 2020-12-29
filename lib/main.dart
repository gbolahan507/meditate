import 'package:flutter/material.dart';
import 'package:meditaion_app/auths/otp_page.dart';
import 'package:meditaion_app/auths/selectTopic.dart';
import 'package:meditaion_app/auths/sign_in.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/onboarding_screen/launch_page.dart';
import 'package:meditaion_app/screens/navscreen.dart';
import 'package:meditaion_app/widget/organism/homepage/homepage_screen.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_upconv.dart';
import 'package:meditaion_app/widget/organism/open_ups/open_up_screen.dart';
import 'package:meditaion_app/widget/organism/profile/other_profile_view/other_profile.dart';
import 'package:meditaion_app/widget/organism/profile/profile_page.dart';

import 'widget/organism/profile/edit_profile.dart';

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
      home: Other_profie_view(),
    );
  }
}


