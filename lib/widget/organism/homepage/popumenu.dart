import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/organism/profile/edit_profile.dart';


class Popmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child:PopupMenuButton(
        color: teal200,
  icon: Icon(Icons.menu, color: Colors.white, size: 35,),
  itemBuilder: (context) => [
    PopupMenuItem(
      value: 1,
      child: 
         InkWell(
           onTap: (){},
           child: Apptext(text:"Anonymous Mode", color: whitecolor,)),
    
    ),
    PopupMenuItem(
      value: 1,
      child:  InkWell(
        onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

        },
        child: Apptext(text:"Edit Profile", color: whitecolor,)),
    ),
    PopupMenuItem(
      value: 1,
      child:  Apptext(text:"Saved", color: whitecolor,),
    ),
        PopupMenuItem(
      value: 1,
      child:  Apptext(text:"Settings", color: whitecolor,),
    ),
        PopupMenuItem(
      value: 1,
      child:  Apptext(text:"Log out", color: whitecolor,),
    ),
  ],
),
    );
  }
}