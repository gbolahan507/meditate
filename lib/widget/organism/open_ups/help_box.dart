import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../atom/h1.dart';






class Help_box extends StatelessWidget {
  const Help_box({
    Key key, this.text, this.image, this.onTap, this.imagewidth, this.color,
  }) : super(key: key);

  final text;
  final image;
  final onTap;
  final color;
  final double imagewidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          child: Container(
        padding: EdgeInsets.symmetric(vertical:6),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ?? teal200
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('${image}', width: imagewidth,) ,
          SizedBox(width: 20,),
           Apptext(
              allignment: Alignment.centerLeft,
              text: '${text}',
              color: whitecolor,
              fontsize: 24,
              fontweight: FontWeight.w600,
            ),


        ],
        ),
      ),
    );
  }
}