import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';




class Payment_gateway extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Column(
                children: [
                  SpecialButtonFilled(
                    text: 'Payment Gateway'
                  ),
                   SizedBox(height: height * 0.15),
                   Box_container(
                     text: 'Credit/Debit Card',
                     onTap: (){},
                   ),
                SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'Nte Banking',
                     onTap: (){},
                   ),
                     SizedBox(height: height * 0.02),
                   Box_container(
                     text: 'UPI',
                     onTap: (){},
                   ),

                   SizedBox(height: height * 0.15),

                   Apptext(text: 'App icon',),

                   SizedBox(height: height * 0.2),
                   ButtonFilled(
                     text: 'Pay now',
                     action: (){},
                   )



                ]
              )
            )
          ]
        )
      )
                  
    );
  }
}




class Box_container extends StatelessWidget {
  const Box_container({
    Key key, this.text, this.onTap, this.color,
  }) : super(key: key);

  final text;
  final onTap;
  final color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
       child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: teal200, width: 1.0),
          borderRadius: BorderRadius.circular(8),
          color: color ?? whitecolor 
        ),
        child: Apptext(text: '${text}', color: Colors.grey,),
      ),
    );
  }
}