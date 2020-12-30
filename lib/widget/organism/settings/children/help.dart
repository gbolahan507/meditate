import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/payment/payment_gateway.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/settings/children/notification_page.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';
import 'package:meditaion_app/widget/organism/settings/children/security_page.dart';




class Help extends StatelessWidget {
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
                    text: 'Help'
                  ),
                   SizedBox(height: height * 0.1),
                   Apptext(text: 'Report a Problem', allignment: Alignment.center, color: thickblack, fontsize: 18,),
                   SizedBox(height: height * 0.02),
                   
                   Box_container(
                     text: 'Report Spam/Abuse',
                     onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page()));

                     },
                   ),
                SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Send Feedback',
                              onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy_page()));

                   },
                   ),
                     SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Report Another Problem',
                     onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

                     },
                   ),

                   SizedBox(height: height * 0.1),

                   ButtonFilled(
                     text: 'Help Center',
                     action: (){},
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