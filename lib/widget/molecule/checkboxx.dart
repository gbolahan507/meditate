import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';





class CheckedBox extends StatelessWidget {
  const CheckedBox({
    Key key, this.onTap, this.color, this.child, this.text, this.heading,
    
  }) : super(key: key);

  final onTap;
  final color;
  final text;
  final heading;
  final Widget child;


  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(height: height * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
          children: [
            InkWell(
                onTap: onTap,
                child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: teal200),
                  color: color  ,
                ),
                child: child   
                // 
              ),
            ),
            SizedBox(width: 20),
            Apptext(text: '${text}',  color: thickblack,)
          ],
                          ),
        ),
      ],
    );
  }
}