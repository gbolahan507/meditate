import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/molecule/open_ups/open_upps.dart';
import 'package:meditaion_app/widget/molecule/profile/profile_option.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/anonymous_profile.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/profile/other_profile_view/other_profile.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';


class Profile_page  extends StatefulWidget {
  @override
  _Profile_pageState createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {

  int selected = 0;
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
                    text: 'My Profile'
                  ),
               SizedBox(height: height * 0.05),

                  CircleAvatar(
                    radius: 60,
                    backgroundImage:  AssetImage('images/gbolahan2.png'),
                  ),
               SizedBox(height: height * 0.01),

                  InkWell(
                    onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

                    },
                    child: Apptext(text: 'Edit Profile', fontsize: 14, allignment: Alignment.center,)),

               SizedBox(height: height * 0.02),


                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Profile_option(
                        icon: Icons.group_add_outlined,
                        onTap: (){},
                      ),
                      Profile_option(
                    icon: Icons.chat_bubble_outlined,
                    onTap: (){},
                  ),
                  Profile_option(
                    icon: Icons.call,
                    onTap: (){},
                  ),
                  Profile_option(
                    icon: Icons.person_remove,
                    onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Anonymous_profile()));

                    },
                    color: pink200,
                  ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),

                  Apptext(text: 'Mona Shamma', color: thickblack, fontweight: FontWeight.w600, fontsize: 20, allignment: Alignment.center,),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: '403 followers', fontsize: 14, color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 10),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 10),
                      Apptext(text: '10 followers', fontsize: 14, color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      
                    ],
                  ),

                     SizedBox(height: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: 'Student, IN', fontsize: 14, color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 10),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 10),
                      Apptext(text: '19 years', fontsize: 14, color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      
                    ],
                  ),

                      SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         height: 35.0,
                         text: 'Queries',
                         onTap: (){
                         setState(() {
                             selected = 0;
                           });
                         },
                         color: selected == 0 ? teal200 : whitecolor,
                         textcolor: selected == 0 ? whitecolor : teal200,
                       ),
                       
                       SizedBox(width: 10),
                       Open_up_button(
                         height: 35.0,
                         text: 'Interest',
                          onTap: (){
                         setState(() {
                             selected = 1;
                           });
                         },
                         color: selected == 1 ? teal200 : whitecolor,
                         textcolor: selected == 1 ? whitecolor : teal200,
                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

                selected == 0 ?   ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container(
                         onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Other_profie_view()));

                         }
                       );
                     }) : Container()





                ]
              )
            )
          ]
        )
      ),
    );
  }
}




