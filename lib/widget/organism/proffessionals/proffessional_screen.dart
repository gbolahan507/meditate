import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/proffessionals/proffesional_container.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';



class Professionals_screen extends StatelessWidget {
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
                       ),
                       Open_up_button(
                         text: 'Filters',
                       ),
                     ],
                   ),
                 SizedBox(height: height * 0.05),


                      ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Professional_container();
                     })


               

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