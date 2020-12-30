import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_landpage.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_profile_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';


class Confirming_book_appointment  extends StatelessWidget {
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
                      Profile_option(
                        icon: Icons.group_add_outlined,
                        onTap: (){},
                      ),
                      SizedBox(width: 30),
                      Profile_option(
                    icon: Icons.chat_bubble_outlined,
                    onTap: (){},
                  ),
              
                    ],
                  ),
                  SizedBox(height: height * 0.01),

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
                  SizedBox(height: height * 0.07),

                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appointmentbutton(
                              width: 230.0,
                             text: 'Appointment Confirmed',
                             color: whitecolor,
                             textcolor: teal200,
                             onTap: (){

                             },                         
                             
                           ),
                      ],
                    ),

                         SizedBox(height: height * 0.05),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Apptext(text: 'Date', ),
                              Apptext(text: '14 November 2020', ),

                            ],
                          ),
                        SizedBox(height: height * 0.015),


                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Time', ),
                        Apptext(text: '6:00pm', allignment: Alignment.centerRight,),

                      ],
                    ),

                        SizedBox(height: height * 0.07),


                    
                ]
              )
            ),

          ]
        )
      ),
        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Appointmentbutton(
                                 text: 'Add to calendar',
                                 textcolor: whitecolor,
                                 onTap: (){

                                 },   
                                 height: 30.0,
                                 width: 120 ,

                                 
                               ),
                                Appointmentbutton(
                                 text: 'Email Receipt',
                                 textcolor: whitecolor,
                                 onTap: (){

                                 },   
                                 height: 30.0,
                                  width: 120 ,


                                 
                               ),
                                Appointmentbutton(
                                text: 'Share',
                                height: 30.0,
                                fontsize: 14.0,
                                 width: 120 ,

                                textcolor: whitecolor,
                                onTap: (){

                                },                         
                                
                               ),
                          ],
                        ),
          ]
        )
          
      )
    );
  }
}