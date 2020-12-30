import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/open_ups/help_box.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';




class Open_up extends StatefulWidget {
  @override
  _Open_upState createState() => _Open_upState();
}

class _Open_upState extends State<Open_up> {
  @override
  Widget build(BuildContext context) {
      var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children:[
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  HomepageButtonFilled(),
                  SizedBox(height: height * 0.03),
                  Apptext(text: 'Feeling low? We are here to help', fontweight: FontWeight.w700, fontsize: 30, ),
                  SizedBox(height: height * 0.1),
                  Image.asset('images/group.png', ),
                  SizedBox(height: height * 0.1),

                     Help_box(
                  image: 'images/chat.png',
                  text: 'Open Up',
                  imagewidth: 50.0,
                  
                  onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Open_up_page()));
                  },
                ),
                  SizedBox(height: height * 0.02),


                Apptext(
                    allignment: Alignment.center,
                    text: 'or',
                    color: teal200,
                    fontsize: 25,
                    fontweight: FontWeight.w600,
                  ),
                  SizedBox(height: height * 0.02),

                Help_box(
                  image: 'images/phone.png',
                  text: 'Listen Now',
                  imagewidth: 50.0,
                  onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Listen_now_screen()));

                    
                  },
                  color: pink200,
                ),
                  SizedBox(height: height * 0.05),

                  
                ],
              ),
            )
            
          ]
      )
      )
      
    );
  }
}