import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/util/colors.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';


class SelectToic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: ListView(
          children: [
          SizedBox(height: height * 0.03),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SpecialButtonFilled(
                    text: 'Select Topic'
                  ),
                 SizedBox(height: height * 0.02),

                  Container( height: 35, child: CustomInput( 
                    prefixIcon: Icon(Icons.search, color: teal200,)
                  )),
                 SizedBox(height: height * 0.04),

                 
                  


                ],
              ),

            ),
             Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Topic_container(
                        text: 'Travel',
                      ),
                      Topic_container(
                        text: 'Travel',
                      ),
                       Topic_container(
                        text: 'Travel',
                      ),
                    ],
                  ),
              SizedBox(height: height * 0.5),


                  Container(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ButtonFilled(
                        text: ' Continue',
                        // color: whitecolor,
                        action: (){},
                        

                      ),
                    ),
                  )

          ],
        ),
      ),
      
    );
  }
}

class Topic_container extends StatelessWidget {
  const Topic_container({
    Key key, this.text, this.onTap,
  }) : super(key: key);

  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: (){},
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: teal200
          ),
          child: Apptext(text: '${text}', allignment: Alignment.center, color: whitecolor,),
      ),
        ),
    );
  }
}