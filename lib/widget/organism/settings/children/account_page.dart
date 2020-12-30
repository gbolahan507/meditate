import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/payment/payment_gateway.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/settings/children/change_password.dart';
import 'package:meditaion_app/widget/organism/settings/children/language.dart';
import 'package:meditaion_app/widget/organism/settings/children/notification_page.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';
import 'package:meditaion_app/widget/organism/settings/children/security_page.dart';




class Account extends StatelessWidget {
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
                    text: 'Account'
                  ),
                   SizedBox(height: height * 0.03),
                   Box_container(
                     text: 'Referal Link',
                     onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page()));

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
                     text: 'Edit Profile',
                     onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

                     },
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Delete Account',
                     onTap: (){},
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Change Password',
                     onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Change_password()));

                     },
                   ),
                         SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Language',
                     onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Language()));

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