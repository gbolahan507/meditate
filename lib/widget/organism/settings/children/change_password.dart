import 'package:flutter/material.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';


class Change_password extends StatefulWidget {

  @override
  _Change_passwordState createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
   var _current = TextEditingController();

   var _newpassword = TextEditingController();

   var _repeatpassword = TextEditingController();

   bool newpass = true;

   bool repeatpass = true;

   bool oldpass = true;

   void oldp() {
     oldpass = !oldpass;
   }

      void newp() {
     newpass = !newpass;
   }

      void rnewp() {
     repeatpass = !repeatpass;
   }

  final _formKey = new GlobalKey<FormState>();

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
                    text: 'Password Change'
                  ),
                   SizedBox(height: height * 0.25),

                     CustomInput(
                     hintext: 'Current Password',
                     controller: _current,
                     suffixIcon: InkWell(
                       onTap: (){
                         setState(() {
                           oldp();
                         });
                       },
                       child: Padding(
                         padding: const EdgeInsets.only(top:20),
                         child: 
                           oldpass == true ? Text('open') : Text('lock')
                       )
                     ),
                     obsecuretext: oldpass
                   ),
                   SizedBox(height: height * 0.03),


                   CustomInput(
                     hintext: 'New Password',
                     controller: _newpassword,
                     suffixIcon: InkWell(
                       onTap: (){
                         setState(() {
                           newp();
                         });
                       },
                       child: Padding(
                         padding: const EdgeInsets.only(top:20),
                         child: 
                           newpass == true ? Text('open') : Text('lock')
                       )
                   ),
              
                     obsecuretext: newpass
                   ),
                   SizedBox(height: height * 0.03),

                     CustomInput(
                     hintext: 'Current Password',
                     controller: _repeatpassword,
                     suffixIcon: InkWell(
                       onTap: (){
                         setState(() {
                           rnewp();
                          //  oldpass = !oldpass;
                         });
                       },
                       child: Padding(
                         padding: const EdgeInsets.only(top:20),
                         child: 
                           repeatpass == true ? Text('open') : Text('lock')
                       )
                       ),
                     obsecuretext: repeatpass
                   ),

                   SizedBox(height: height * 0.1),


                   ButtonFilled(
                     text: 'Send OTP',
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


 