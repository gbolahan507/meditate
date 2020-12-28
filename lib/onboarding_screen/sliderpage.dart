import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../widget/atom/h1.dart';


class SliderPage extends StatelessWidget {

  SliderPage({
   this.title, this.image, this.subtitle});

  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      color: Colors.white,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 220,
          width: double.infinity,
          child: Image.asset('$image')),
        SizedBox(height: size.height * 0.06),
        Apptext(
          text: '$title',
          fontweight: FontWeight.bold,
          fontsize: 35,
          color: teal200 ,
          
        ),
        Apptext(
          text: '$subtitle',
          color: teal200,
          fontsize: 20,
        ),
      
 
      ],
    ),
      
    );
  }
}
