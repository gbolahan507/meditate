import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/organism/homepage/popumenu.dart';

class ButtonFilled extends StatelessWidget {
  final text;
  final width;
  final action;
  final color;
  final Color textColor;

  ButtonFilled({Key key, this.action, this.width, this.text, this.color, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: width ?? double.infinity,
      child: new FlatButton(
        onPressed: action,
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
                
            color: color?? teal200,
          ),
          alignment: Alignment.center,
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor ?? whitecolor, fontSize: 20, fontWeight: FontWeight.normal, fontFamily: 'OpenSans' ),
          ),
        ),
      ),
    );
  }
}






class SpecialButtonFilled extends StatelessWidget {
  final text;
  final width;
  final action;
  final color;
  final Color textColor;
  final ontapmore;


  

  SpecialButtonFilled({Key key, this.action, this.width, this.text, this.color, this.textColor, this.ontapmore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: width ?? double.infinity,
      child: new FlatButton(
        onPressed: action,
        padding: EdgeInsets.all(0.0),
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0)),
            color: color?? teal200
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context);
                },
                child: Icon(Icons.arrow_back, color: whitecolor,)),
              Text(
                "$text",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor ?? Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'OpenSans' ),
              ),
              Container( width: 32,),
            ],
          ),
        ),
      ),
    );
  }
}





class HomepageButtonFilled extends StatelessWidget {
  final text;
  final width;
  final action;
  final color;
  final Color textColor;
  final ontapmore;

  HomepageButtonFilled({Key key, this.action, this.width, this.text, this.color, this.textColor, this.ontapmore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: width ?? double.infinity,
      child: new FlatButton(
        onPressed: action,
        padding: EdgeInsets.all(0.0),
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0)),
            color: color?? teal200
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/gbolahan2.png'),
              ),
             
              Text(
                "spaekeasyicon",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor ?? Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'OpenSans' ),
              ),
              Popmenu(),
            ],
          ),
        ),
      ),
    );
  }
}


