import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/molecule/checkboxx.dart';






class Privacy_page extends StatefulWidget {
  @override
  _Privacy_pageState createState() => _Privacy_pageState();
}

class _Privacy_pageState extends State<Privacy_page> {
  
  // bool ch = false;
  int online ;
  int photo ;
  int receipt ;
  int blocked ;



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
                    text: 'Privacy'
                  ),
                   SizedBox(height: height * 0.02),

               Apptext(text: 'Who can see my personal information', allignment: Alignment.center,),

                   SizedBox(height: height * 0.02),

                    Column(
                      children: [
                    Apptext(text: 'Last Online', color: thickblack, fontsize: 18,),

                        CheckedBox(
                        text: 'Allow Everyone',
                        onTap: (){
                             setState(() {
                               online = 0;
                             });
                        },
                        color: online == 0 ? teal200 :   whitecolor,
                        child: online == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                             ),
                  SizedBox(height: height * 0.015),

                   

                    CheckedBox(
                    text: 'Allow Only Followers',
                    onTap: (){
                         setState(() {
                           online = 1;
                         });
                    },
                    color: online == 1 ? teal200 :   whitecolor,
                    child: online == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                  SizedBox(height: height * 0.015),

                    
                    CheckedBox(
                    text: 'No One',
                    onTap: (){
                         setState(() {
                           online = 2;
                         });
                    },
                    color: online == 2 ? teal200 :   whitecolor,
                    child: online == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                            ],
                    ),

                  SizedBox(height: height * 0.01),


                      Column(
                      children: [
                    Apptext(text: 'Profile Photo', color: thickblack, fontsize: 18,),

                        CheckedBox(
                        text: 'Allow Everyone',
                        onTap: (){
                             setState(() {
                               photo = 0;
                             });
                        },
                        color: photo == 0 ? teal200 :   whitecolor,
                        child: photo == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                             ),
                  SizedBox(height: height * 0.015),

                   

                    CheckedBox(
                    text: 'Allow Only Followers',
                    onTap: (){
                         setState(() {
                           photo = 1;
                         });
                    },
                    color: photo == 1 ? teal200 :   whitecolor,
                    child: photo == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                  SizedBox(height: height * 0.015),

                    
                    CheckedBox(
                    text: 'No One',
                    onTap: (){
                         setState(() {
                           photo = 2;
                         });
                    },
                    color: photo == 2 ? teal200 :   whitecolor,
                    child: photo == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                            ],
                    ),

                       SizedBox(height: height * 0.01),


                      Column(
                      children: [
                    Apptext(text: 'Seen Receipt', color: thickblack, fontsize: 18,),

                        CheckedBox(
                        text: 'Allow Everyone',
                        onTap: (){
                             setState(() {
                               receipt = 0;
                             });
                        },
                        color: receipt == 0 ? teal200 :   whitecolor,
                        child: receipt == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                             ),
                  SizedBox(height: height * 0.015),

                   

                    CheckedBox(
                    text: 'Allow Only Followers',
                    onTap: (){
                         setState(() {
                           receipt = 1;
                         });
                    },
                    color: receipt == 1 ? teal200 :   whitecolor,
                    child: receipt == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                  SizedBox(height: height * 0.015),

                    
                    CheckedBox(
                    text: 'No One',
                    onTap: (){
                         setState(() {
                           receipt = 2;
                         });
                    },
                    color: receipt == 2 ? teal200 :   whitecolor,
                    child: receipt == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                            ],
                    ),

                       SizedBox(height: height * 0.01),


                      Column(
                      children: [
                    Apptext(text: 'Blocked', color: thickblack, fontsize: 18,),

                        CheckedBox(
                        text: 'Allow Everyone',
                        onTap: (){
                             setState(() {
                               blocked = 0;
                             });
                        },
                        color: blocked == 0 ? teal200 :   whitecolor,
                        child: blocked == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                             ),
                  SizedBox(height: height * 0.015),

                   

                    CheckedBox(
                    text: 'Allow Only Followers',
                    onTap: (){
                         setState(() {
                           blocked = 1;
                         });
                    },
                    color: blocked == 1 ? teal200 :   whitecolor,
                    child: blocked == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                  SizedBox(height: height * 0.015),

                    
                    CheckedBox(
                    text: 'No One',
                    onTap: (){
                         setState(() {
                           blocked = 2;
                         });
                    },
                    color: blocked == 2 ? teal200 :   whitecolor,
                    child: blocked == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                         ),
                            ],
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













