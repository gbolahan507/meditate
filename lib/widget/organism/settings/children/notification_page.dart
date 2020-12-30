import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';




class Notification_page extends StatefulWidget {
  @override
  _Notification_pageState createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {

  // bool ch = false;
  int checked ;

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
                    text: 'Notification'
                  ),
                   SizedBox(height: height * 0.13),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: (){
                                    setState(() {
                                      checked = 0;
                                    });
                                  },
                                  child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: teal200),
                                    color: checked == 0 ? teal200 : whitecolor,
                                  ),
                                  child:  checked == 0 ? Icon(Icons.check) : null
                                  // 
                                ),
                              ),
                              SizedBox(width: 20),
                              Apptext(text: 'Pause All',  color: thickblack,)
                            ],
                          ),
                       SizedBox(height: height * 0.03),

                        

                         Row(
                        children: [
                          InkWell(
                              onTap: (){
                                setState(() {
                                  checked = 1;
                                });
                              },
                              child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: teal200),
                                color: checked == 1 ? teal200 :   whitecolor,
                              ),
                              child:  checked == 1 ? Icon(Icons.check, color: whitecolor,) : null
                              // 
                            ),
                          ),
                          SizedBox(width: 20),
                          Apptext(text: 'Only chat messages & calls',  color: thickblack,)
                        ],
                      ),

                       SizedBox(height: height * 0.03),


                        Row(
                        children: [
                          InkWell(
                              onTap: (){
                                setState(() {
                                  checked = 2;
                                });
                              },
                              child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: teal200),
                                color: checked == 2 ? teal200 :   whitecolor,
                              ),
                              child:  checked == 2 ? Icon(Icons.check, color: whitecolor,) : null
                              // 
                            ),
                          ),
                          SizedBox(width: 20),
                          Apptext(text: 'Allow All',  color: thickblack,)
                        ],
                      ),
                      ],
                      ),
                    ),
//
                ]
              )
            )
          ]
        )
      )
    );
  }
}