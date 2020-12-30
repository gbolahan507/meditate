import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/molecule/appointment/appointment.dart';
import 'package:meditaion_app/widget/organism/billing/billing_page.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_profile_page.dart';
import 'package:meditaion_app/widget/organism/book_appointment/confirming_book_appointment.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/profile/profile_page.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';


class Book_appointment_landpage  extends StatelessWidget {
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
                    text: 'Book Appointment'
                  ),
               SizedBox(height: height * 0.05),

                  CircleAvatar(
                    radius: 60,
                    backgroundImage:  AssetImage('images/gbolahan2.png'),
                  ),
               SizedBox(height: height * 0.01),

                 Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Follower_option(
                      text: '410',
                      ),
                      SizedBox(width: 30),
                      Follower_option(
                       text:  5,
                       color: pink200,
                  ),
              
                    ],
                  ),
                  SizedBox(height: height * 0.03),

                  Apptext(text: 'Mona Shamma', color: thickblack, fontweight: FontWeight.w600, fontsize: 20, allignment: Alignment.center,),
                  
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: '403 followers', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 5),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 5),
                      Apptext(text: '10 followers', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      
                    ],
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Apptext(text: 'Counselling Psychologist', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                        SizedBox(width: 5),
                        Container(height: 15, width: 2, color: Colors.grey,),
                        SizedBox(width: 5),
                        Apptext(text: '9years experience', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                        
                      ],
                  ),
                  SizedBox(height: height * 0.03),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appointmentbutton(
                             text: 'Select date',
                             color: whitecolor,
                             textcolor: teal200,
                             onTap: (){

                             },                         
                             
                           ),
                      ]
                    ),
                  SizedBox(height: height * 0.1),


                              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appointmentbutton(
                             text: 'Select Time',
                             color: whitecolor,
                             textcolor: teal200,
                             onTap: (){

                             },                         
                             
                           ),
                      ],
                    ),
                  SizedBox(height: height * 0.1),


                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appointmentbutton(
                             text: 'Submit',
                             textcolor: whitecolor,
                             onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Billing_page()));
                            
                             },                         
                             
                           ),
                      ],
                    ),
                      
                ]
              )
            )
          ]
        )
      )
    );
  }
}



class Appointmentbutton extends StatelessWidget {
  const Appointmentbutton({
    Key key, this.text, this.onTap, this.color, this.textcolor, this.height, this.width, this.fontsize, 
  }) : super(key: key);

  final text;
  final onTap;
  final Color color;
  final textcolor;
  final double height;
  final double width;
  final double fontsize;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
       child: Container(
        height: height ?? 40,
        width: width ?? 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teal200, width: 1.0),
        color: color ?? teal200
      ),
      child: Apptext(text: '${text}', fontsize: fontsize ?? 14, color: textcolor ?? whitecolor, allignment: Alignment.center,),
      ),
    );
  }
}