import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../atom/h1.dart';






class Help_box extends StatelessWidget {
  const Help_box({
    Key key, this.text, this.image, this.onTap, this.imagewidth,
  }) : super(key: key);

  final text;
  final image;
  final onTap;
  final double imagewidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(vertical:10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue[100],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('${image}', width: imagewidth,) ,
          SizedBox(width: 20,),
           Apptext(
              allignment: Alignment.centerLeft,
              text: '${text}',
              color: thickblack,
              fontsize: 24,
              fontweight: FontWeight.w600,
            ),


        ],
        ),
      ),
    );
  }
}