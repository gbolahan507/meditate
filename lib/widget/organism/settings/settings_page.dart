import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/payment/payment_gateway.dart';
import 'package:meditaion_app/widget/organism/settings/children/notification_page.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';




class Settings extends StatelessWidget {
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
                    text: 'Settings'
                  ),
                   SizedBox(height: height * 0.03),
                   Box_container(
                     text: 'Notification',
                     onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page()));

                     },
                   ),
                SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Privacy',
                              onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy_page()));

                   },
                   ),
                     SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Security',
                     onTap: (){},
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Account',
                     onTap: (){},
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Help',
                     onTap: (){},
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'About',
                     onTap: (){},
                   ),

                  SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Emergency',
                     onTap: (){},
                     color: pink200
                   ),

                   SizedBox(height: height * 0.15),

                   Apptext(text: 'App icon',allignment: Alignment.center, ),

                   SizedBox(height: height * 0.2),
                  



                ]
              )
            )
          ]
        )
      )
                  
    );
  }
}