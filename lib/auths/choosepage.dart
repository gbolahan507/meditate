import 'package:flutter/material.dart';
import 'package:meditaion_app/auths/sign_in.dart';
import 'package:meditaion_app/auths/signup_page.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';


class Choose_auth_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: teal200,
      body: Container(
        padding: EdgeInsets.only(bottom: height * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Container(),
            Container(height: 70, width: 10,),
          Apptext(text: 'Speak Easy', allignment: Alignment.center, color: whitecolor , fontsize: 30, fontweight: FontWeight.w600,),
             
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooseButton(
                  text: 'SIGN IN',
                  onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in()));

                  },
                  color: whitecolor
                ),
                SizedBox(width: 20),

                ChooseButton(
                  text: 'SIGN UP',
                  onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_page()));

                  },
                  color: teal200,
                  textcolor: whitecolor,
                ),
            
              ],
            )
          ],
        ),

      ),
      
    );
  }
}




class ChooseButton extends StatelessWidget {
  const ChooseButton({
    Key key, this.text, this.color, this.onTap, this.textcolor,
  }) : super(key: key);
  final text;
  final color;
  final onTap;
  final textcolor;

  


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
        padding: EdgeInsets.symmetric(horizontal:20, vertical:7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: Border.all(color: whitecolor),
        ),
        child: Apptext(text: '${text}', color: textcolor ?? teal200, fontsize: 30, fontweight: FontWeight.w600,),
      ),
    );
  }
}