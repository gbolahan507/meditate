import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/organism/settings/children/privacy.dart';








class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {


  // bool ch = false;
  int language = 0 ;

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
                    text: 'Language'
                  ),
                   SizedBox(height: height * 0.13),
                    
                  CheckedBox(
                  text: 'English',
                  onTap: (){
                        setState(() {
                          language = 0;
                        });
                  },
                  color: language == 0 ? teal200 :   whitecolor,
                  child: language == 0 ? Icon(Icons.check, color: whitecolor,) : null,
                        ),
                  SizedBox(height: height * 0.015),

                   

                    CheckedBox(
                    text: 'Hindi',
                    onTap: (){
                    setState(() {
                      language = 1;
                    });
                    },
                    color: language == 1 ? teal200 :   whitecolor,
                    child: language == 1 ? Icon(Icons.check, color: whitecolor,) : null,
                                         ),
                  SizedBox(height: height * 0.015),

                    
                    CheckedBox(
                    text: 'yoruba',
                    onTap: (){
                    setState(() {
                      language = 2;
                    });
                    },
                    color: language == 2 ? teal200 :   whitecolor,
                    child: language == 2 ? Icon(Icons.check, color: whitecolor,) : null,
                                         ),

                ]
              )
            )
          ]
        )
      )
         );
  }
}