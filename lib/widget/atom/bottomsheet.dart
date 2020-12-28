import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';




class BottomSheeeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      // color: Colors.grey[100],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
            color :Colors.deepPurpleAccent[400]

        ),
        height: 100,
        child: Stack(
          overflow: Overflow.visible,
          children: [
             Positioned(
               top: -20,
               left: 30,
                 child: Container(
                  height: 80,
                      width: 90,
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('images/gbolahan2.png',
                  fit: BoxFit.cover
                  )
                 ),
          ),
             ),
        

               Positioned(
                 left: 140,
                 top: 5,
                      child: Apptext(text: 'Good Night', fontweight: FontWeight.w700, color: whitecolor, fontsize: 20,),
               ),

                 Positioned(
                 left: 140,
                 top: 35,
                      child: Apptext(text: 'Stephen Fry', fontweight: FontWeight.normal, color: whitecolor, fontsize: 14,),
               ),
               
                 Positioned(
                 right: 80,
                 top: 30,
                      child: Apptext(text: '01:35', fontweight: FontWeight.normal, color: whitecolor, fontsize: 14,),
               ),

                    Positioned(
                 right: 20,
                 top: 20,
                      child: Image.asset('images/play.png',)
               ),


          ],
        ),
      ),
    );
  }
}