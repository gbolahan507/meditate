import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/open_ups/help_box.dart';




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
                     Help_box(
                  image: 'images/chat.png',
                  text: 'Chat with us',
                  imagewidth: 50.0,
                  
                  onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => Chat_Screen()));
  
                  },
                ),

                Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Apptext(
                        allignment: Alignment.center,
                        text: 'or',
                        color: thickblack,
                        fontsize: 30,
                        fontweight: FontWeight.w600,
                      ),
                ),
                Help_box(
                  image: 'images/phone.png',
                  text: 'Talk to us',
                  imagewidth: 50.0,
                  onTap: (){},
                ),
                  
                ],
              ),
            )
            
          ]
      )
      )
      
    );
  }
}