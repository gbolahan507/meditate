import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/h1.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/profile/profile_page.dart';


class Other_profie_view extends StatelessWidget {
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
                    text: 'Profile'
                  ),
               SizedBox(height: height * 0.1),

                  CircleAvatar(
                    radius: 60,
                    backgroundImage:  AssetImage('images/gbolahan2.png'),
                  ),
                  SizedBox(height: height * 0.02),
                  Apptext(text: 'John Shamma', color: thickblack, fontweight: FontWeight.w600, fontsize: 20, allignment: Alignment.center,),
                  Apptext(text: '403 followers', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                     SizedBox(height: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: 'Psycologist, IN', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                      SizedBox(width: 10),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 10),
                      Apptext(text: '24 years', color: thickblack, fontweight: FontWeight.w400, allignment: Alignment.center,),
                        
                    ],
                  ),
                     SizedBox(height: height * 0.1),


                  Container(
                    width: 200,
                    child: Follow_button(
                           text: 'follow',
                         ),
                  ),

                          SizedBox(height: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Apptext(text: 'Block', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,)),
                      SizedBox(width: 5),
                      Container(height: 15, width: 2, color: Colors.grey,),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: (){},
                        child: Apptext(text: 'Unblock', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,)),
                        
                    ],
                  ),

                          SizedBox(height: height * 0.2),


                    Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Profile_option(
                        icon: Icons.group_add_outlined,
                        onTap: (){},
                        height: 60.0,
                        width: 60.0,
                        size: 40.0
                      ),
                      Profile_option(
                    icon: Icons.chat_bubble_outlined,
                    onTap: (){},
                          height: 60.0,
                        width: 60.0,
                        size: 40.0

                  ),
                  Profile_option(
                    icon: Icons.call,
                    onTap: (){},
                      height: 60.0,
                        width: 60.0,
                        size: 40.0

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


class Follow_button extends StatelessWidget {
  const Follow_button({
    Key key, this.text, this.onTap, this.color, 
  }) : super(key: key);

  final text;
  final onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
       child: Container(
        height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teal200, width: 1.0),
        color: color ?? teal200
      ),
      child: Apptext(text: '${text}', color: whitecolor, allignment: Alignment.center,),
      ),
    );
  }
}