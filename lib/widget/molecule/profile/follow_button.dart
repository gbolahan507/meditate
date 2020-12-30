import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';





class Follow_button extends StatelessWidget {
  const Follow_button({
    Key key, this.text, this.onTap, this.color, 
  }) : super(key: key);

  final text;
  final onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
       child: Container(
        height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teal200, width: 1.0),
        color: color ?? teal200
      ),
      child: Apptext(text: '${text}', color: whitecolor, allignment: Alignment.center,),
      ),
    );
  }
}