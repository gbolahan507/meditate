import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/organism/book_appointment/book_appointment_profile_page.dart';




class Professional_container extends StatelessWidget {
  const Professional_container({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Book_appointment_profile_page()));

      },
          child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/gbolahan2.png'),

                    ),
                    Positioned(
                      bottom: 5,
                      right: 1,
                      child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreen,), height: 10, width: 10, ))
                  ],
                ),
                SizedBox(width: 15),

                Expanded(
                    child: Column(
                    children: [
                      Apptext(text: 'Rohit Sharma', color: thickblack, fontsize: 20, fontweight: FontWeight.w500,),
                      Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Apptext(text: '403 followers', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                        SizedBox(width: 5),
                        Container(height: 15, width: 2, color: Colors.grey,),
                        SizedBox(width: 5),
                        Apptext(text: '10 followers', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                        
                      ],
                    ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Apptext(text: 'Counselling Psychologist', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,),
                          SizedBox(width: 5),
                          Container(height: 15, width: 2, color: Colors.grey,),
                          SizedBox(width: 5),
                          Expanded(child: Apptext(text: '9years experience', color: thickblack, fontsize: 14, fontweight: FontWeight.w400, allignment: Alignment.center,)),
                          
                        ],
                    ),
                    ],
                  ),
                )

              ],
            ),
            SizedBox(height:10),
            Divider(color: Colors.grey),
            SizedBox(height:10),

          ],
        ),
      ),
    );
  }
}


