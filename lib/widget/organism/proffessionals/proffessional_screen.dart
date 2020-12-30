import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/molecule/open_ups/open_upps.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/proffessionals/proffesional_container.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';



class Professionals_screen extends StatefulWidget {
  @override
  _Professionals_screenState createState() => _Professionals_screenState();
}

class _Professionals_screenState extends State<Professionals_screen> {
  int clicked = 0;
  
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
                    text: 'Professionals'
                  ),
               SizedBox(height: height * 0.02),
               Container(
                 height: 35,
                 child: CustomInput(
                  prefixIcon: Icon(Icons.search, color: teal200,)
                 ),
               ),
                   SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         text: 'Sort By',
                         onTap: (){
                           setState(() {
                             clicked = 0;
                           });
                         },
                         color: clicked == 0 ? teal200 : whitecolor,
                         textcolor: clicked == 0 ? whitecolor : teal200,
                       ),
                       Open_up_button(
                         text: 'Filters',
                        onTap: (){
                           setState(() {
                             clicked = 1;
                           });
                         },
                         color: clicked == 1 ? teal200 : whitecolor,
                         textcolor: clicked == 1 ? whitecolor : teal200,
                       ),
                     ],
                   ),
                 SizedBox(height: height * 0.05),


                     clicked == 0 ?  ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Professional_container();
                     }) : Container()


               

              //  Open
                ]
              )
            )
          ]
        )
      )
    );
  }
}