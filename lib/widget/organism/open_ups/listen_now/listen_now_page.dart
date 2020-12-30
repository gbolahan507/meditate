import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/molecule/open_ups/open_upps.dart';
import 'package:meditaion_app/widget/organism/open_ups/listen_now/listen_now_chatpage.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Listen_now_screen extends StatefulWidget {
  @override
  _Listen_now_screenState createState() => _Listen_now_screenState();
}

class _Listen_now_screenState extends State<Listen_now_screen> {

    int checked = 0;

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
                  text: 'Listen Now',
                  color: pink200,
                ),
                   SizedBox(height: height * 0.03),
                    Container( height: 40, child: Listen_now_search( 
                    prefixIcon: Icon(Icons.search, color: pink200,)
                  )),
                   SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         onTap: (){
                           setState(() {
                             checked = 0;
                           });
                         },
                         color: checked == 0 ? pink200 : whitecolor,
                         textcolor: checked == 0 ? whitecolor : pink200, 
                        
                         text: 'New Queries',
                         bordercolor: pink200,
                        //  color: pink200,
                        
                       ),
                       Open_up_button(
                            onTap: (){
                           setState(() {
                             checked = 1;
                           });
                         },
                         color: checked == 1 ? pink200 : whitecolor,
                         textcolor: checked == 1 ? whitecolor : pink200, 
                        
                         text: 'Ongoing',
                         bordercolor: pink200,

                        //  color: pink200,

                       ),
                         Open_up_button(
                              onTap: (){
                           setState(() {
                             checked = 2;
                           });
                         },
                         color: checked == 2 ? pink200 : whitecolor,
                         textcolor: checked == 2 ? whitecolor : pink200, 
                        
                         text: 'Resolved',
                         bordercolor: pink200,

                        //  color: pink200,

                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

                  checked == 0 ?  ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container(
                         onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Listen_now_chatPage()));

                           
                         },
                       );
                     }) : (checked == 1 ? Container() :  (Container () ) )


                  

              ],
            ),
          )
        ],
      ),
    );
  }
}







