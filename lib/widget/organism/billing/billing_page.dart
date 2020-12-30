import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/h1.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_landpage.dart';
import 'package:meditaion_app/widget/organism/payment/payment_gateway.dart';


class Billing_page extends StatelessWidget {
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
                    text: 'Billing'
                  ),
                   SizedBox(height: height * 0.05),
                  Apptext(text: 'Mona Shamma', color: thickblack, fontweight: FontWeight.w600, fontsize: 20, allignment: Alignment.center,),
                   SizedBox(height: height * 0.02),
                  
            
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
                   SizedBox(height: height * 0.05),


                          Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Appointmentbutton(
                             text: 'Order Details',
                             color: whitecolor,
                             textcolor: teal200,
                             onTap: (){

                             },                         
                             
                           ),
                      ]
                    ),
                   SizedBox(height: height * 0.04),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Apptext(text: 'Order Date', ),
                              Apptext(text: '14 November 2020', ),

                            ],
                          ),
                   SizedBox(height: height * 0.01),


                                                Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Order #', ),
                        Apptext(text: '6:00pm', allignment: Alignment.centerRight,),

                      ],
                    ),
                   SizedBox(height: height * 0.01),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Order Total', ),
                        Apptext(text: '14', allignment: Alignment.centerRight,),

                      ],
                    ),
                   SizedBox(height: height * 0.01),

                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Consultation Date', ),
                        Apptext(text: '11 Nov', ),

                      ],
                    ),
                   SizedBox(height: height * 0.01),
             
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Apptext(text: 'Consultation Time', ),
                        Apptext(text: '6:00pm', ),

                      ],
                    ),
                   SizedBox(height: height * 0.01),


                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Payment Metthod', ),
                        Apptext(text: 'Credit Card', ),

                      ],
                    ),
                   SizedBox(height: height * 0.01),
              
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Billing Address', ),
                        Apptext(text: '14 November', ),

                      ],
                    ),

                   SizedBox(height: height * 0.05),


                             Appointmentbutton(
                             text: 'Bill Breakup',
                             color: whitecolor,
                             textcolor: teal200,
                             onTap: (){

                             },                         
                             
                           ),

                                SizedBox(height: height * 0.05),
              
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Appointment cost', ),
                        Apptext(text: '#200', ),

                      ],
                    ),

                         SizedBox(height: height * 0.015),
              
                                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Tax', ),
                        Apptext(text: '#2.00', ),

                      ],
                    ),

                         SizedBox(height: height * 0.015),
              
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(text: 'Other Total', ),
                        Apptext(text: '#300', ),

                      ],
                    ),

                         SizedBox(height: height * 0.1),



                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Appointmentbutton(
                                 text: 'Cancel Order',
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
  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_gateway()));

                                 },   
                                 height: 30.0,
                                  width: 120 ,


                                 
                               ),
                                Appointmentbutton(
                                text: 'Feedback',
                                height: 30.0,
                                fontsize: 14.0,
                                 width: 120 ,

                                textcolor: whitecolor,
                                onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment_gateway()));
                
                                },                         
                                
                               ),
                          ],
                        ),
                         ],
                      ),
                    ),
                ]
              )
            ) 
          ]
        ),
      )
        );
  }
}