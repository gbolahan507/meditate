
import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';



class Profile_option extends StatelessWidget {
  const Profile_option({
    Key key, this.icon, this.onTap, this.color, this.height, this.width, this.size,
  }) : super(key: key);

  final icon;
  final onTap;
  final color;
  final double height;
  final double width;
  final double size;



  @override
  Widget build(BuildContext context) {
    return InkWell(
           onTap: onTap,
          child: Container(
        height: height ?? 40,
        width: width ?? 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? teal200,
        ),
        child: Icon(icon, size: size ?? 25, color: whitecolor,),
      ),
    );
  }
}







class Follower_option extends StatelessWidget {
  const Follower_option({
    Key key, this.icon, this.onTap, this.color, this.height, this.width, this.size, this.text,
  }) : super(key: key);

  final icon;
  final onTap;
  final color;
  final double height;
  final double width;
  final double size;
  final text;



  @override
  Widget build(BuildContext context) {
    return InkWell(
           onTap: onTap,
          child: Container(
        height: height ?? 40,
        width: width ?? 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? teal200,
        ),
        child: Apptext(text: '${text}', fontsize: 15, color: whitecolor, allignment: Alignment.center,)
      ),
    );
  }
}