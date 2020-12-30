import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/payment/payment_gateway.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/settings/children/notification_page.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';
import 'package:meditaion_app/widget/organism/settings/children/security_page.dart';




class About extends StatelessWidget {
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
                    text: 'About'
                  ),
                   SizedBox(height: height * 0.15),
                   Box_container(
                     text: 'Data Policy',
                     onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page()));

                     },
                   ),
                SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Term of Use',
                              onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy_page()));

                   },
                   ),
                     SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Open Sousrce Libraries',
                     onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

                     },
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