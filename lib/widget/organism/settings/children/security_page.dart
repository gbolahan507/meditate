import 'package:flutter/material.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/h1.dart';




class Security_page extends StatelessWidget {
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
                    text: 'Security'
                  ),
                   SizedBox(height: height * 0.02),
                   
               Apptext(text: 'A legal message about our encription', allignment: Alignment.center,),

                   SizedBox(height: height * 0.02),

                   ButtonFilled(
                     text: 'Learn More',
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