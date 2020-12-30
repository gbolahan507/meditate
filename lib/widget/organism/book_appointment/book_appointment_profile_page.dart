import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_landpage.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';


class Book_appointment_profile_page  extends StatelessWidget {
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

                     SizedBox(height: height * 0.015),


                      SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         text: 'Raise Queries',
                         color: whitecolor,
                         onTap: (){

                         },                         
                         
                       ),
                       SizedBox(width: 10),
                       Open_up_button(
                         text: 'Book Appointment',
                         onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Book_appointment_landpage()));

                         },
                       ),
                     ],
                   ),
               





                ]
              )
            ),
                   SizedBox(height: height * 0.02),
               
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20),

                   child: Apptext(text: '500 Reviews', fontsize: 14, fontweight: FontWeight.w400,),
                 ),

                   SizedBox(height: height * 0.03),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10),
                     child: ListView.builder(
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       itemCount: 5,
                       itemBuilder: (context, index){
                         return Queries_container();
                       }),
                   )
          ]
        )
      ),
    );
  }
}




class Profile_option extends StatelessWidget {
  const Profile_option({
    Key key, this.icon, this.onTap, this.color, this.height, this.width, this.size,
  }) : super(key: key);

  final icon;
  final onTap;
  final color;
  final double height;
  final double width;
  final double size;



  @override
  Widget build(BuildContext context) {
    return InkWell(
           onTap: onTap,
          child: Container(
        height: height ?? 40,
        width: width ?? 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? teal200,
        ),
        child: Icon(icon, size: size ?? 25, color: whitecolor,),
      ),
    );
  }
}
