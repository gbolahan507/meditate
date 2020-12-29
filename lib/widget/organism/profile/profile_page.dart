import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';


class Profile_page  extends StatelessWidget {
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

               SizedBox(height: height * 0.03),


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
                    onTap: (){},
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
                      Apptext(text: '403 followers', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 10),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 10),
                      Apptext(text: '10 followers', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      
                    ],
                  ),

                     SizedBox(height: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: 'Student, IN', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 10),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 10),
                      Apptext(text: '19 years', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      
                    ],
                  ),

                      SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         text: 'Queries',
                       ),
                       SizedBox(width: 10),
                       Open_up_button(
                         text: 'Conversation',
                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

                   ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container();
                     })





                ]
              )
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
