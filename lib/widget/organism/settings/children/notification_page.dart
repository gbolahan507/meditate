import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';




class Notification_page extends StatefulWidget {
  @override
  _Notification_pageState createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {

  // bool ch = false;
  int checked = 0 ;

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
         return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Column(
                children: [
                  SpecialButtonFilled(
                    text: 'Notification'
                  ),
                   SizedBox(height: height * 0.13),
                    
                    Column(
                      children: [
                       CheckedBox(
                      text: 'Pause all',
                      onTap: (){
                           setState(() {
                             checked = 0;
                           });
                      },
                      color: checked == 0 ? teal200 :   whitecolor,
                      child: checked == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                           ),
                     SizedBox(height: height * 0.03),

                       CheckedBox(
                      text: 'Only Chat Messages & Calls',
                      onTap: (){
                           setState(() {
                             checked = 1;
                           });
                      },
                      color: checked == 1 ? teal200 :   whitecolor,
                      child: checked == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                           ),

                     SizedBox(height: height * 0.03),

                     
                       CheckedBox(
                      text: 'Allow All',
                      onTap: (){
                           setState(() {
                             checked = 2;
                           });
                      },
                      color: checked == 2 ? teal200 :   whitecolor,
                      child: checked == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                           ),

                    ],
                    ),
//
                ]
              )
            )
          ]
        )
      )
    );
  }
}