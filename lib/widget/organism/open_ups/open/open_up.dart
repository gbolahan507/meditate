import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/molecule/open_ups/open_upps.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_page.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up_chat.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Open_up_page extends StatefulWidget {
  @override
  _Open_up_pageState createState() => _Open_up_pageState();
}

class _Open_up_pageState extends State<Open_up_page> {

  int checked = 0 ;
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
                    Container( height: 40, child: CustomInput( 
                    prefixIcon: Icon(Icons.search, color: teal200,)
                  )),
                   SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                               color: checked ==  0 ? teal200 : whitecolor,
                         textcolor: checked ==  0 ? whitecolor : teal200,
                         text: 'Queries',
                         onTap: (){
                           setState(() {
                             checked = 0;
                           });
                         },
                       ),
                       SizedBox(width: 10,),
                       Open_up_button(
                         color: checked ==  1 ? teal200 : whitecolor,
                         textcolor: checked ==  1 ? whitecolor : teal200,
                         onTap: (){
                           setState(() {
                             checked = 1;
                           });
                         },
                         text: 'Conversation',
                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

               checked ==  0 ?     ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container(
                         onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Open_up_chat_page()));

                         },
                       );
                     })

                     : Container(),


                  

              ],
            ),
          )
        ],
      ),
    );
  }
}









