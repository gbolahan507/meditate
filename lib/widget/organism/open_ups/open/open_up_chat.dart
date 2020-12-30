import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/molecule/open_ups/open_upps.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Open_up_chat_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: height * 0.03),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Column(
              children: [
                SpecialButtonFilled(
                  text: 'Open Up',
                ),
                   SizedBox(height: height * 0.03),
                 

                    Row(
                      children: [
                        CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/gbolahan2.png'),
                  ),
                   SizedBox(width: 15),
                    Apptext(text: 'Rohit', color: teal200, fontsize: 30, fontweight: FontWeight.w700,),

                      ],
                    ),

                   SizedBox(height: height * 0.05),

                   Row(
                     children: [
                       Container(
                         decoration: BoxDecoration(color: Colors.grey[200]),
                         padding: EdgeInsets.symmetric(vertical:5, horizontal:10),
                         child: Apptext(text: 'Hello Rahul', fontsize: 20,)
                       ),
                     ],
                   ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Container(
                         decoration: BoxDecoration(color: Colors.teal[200]),
                         padding: EdgeInsets.symmetric(vertical:5, horizontal:10),
                         child: Apptext(text: 'Hello Rahul', color: whitecolor, fontsize: 20,)
                       ),
                     ],
                   )







                  

              ],
            ),
          )
        ],
      ),
    );
  }
}