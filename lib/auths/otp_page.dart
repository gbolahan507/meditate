import 'package:flutter/material.dart';
import 'package:meditaion_app/auths/selectTopic.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/screens/navscreen.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';




class Otp_verivication extends StatelessWidget {

    var _otp = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _formKey,
              child: ListView(
          children: [
            SizedBox(height: height * 0.25),
            Apptext(text: 'Confirmation', allignment: Alignment.center, fontsize: 30, fontweight: FontWeight.w600,),
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Apptext(text: 'Code message has been sent to your phone number, submit 0TP code below to verify your account', allignment: Alignment.center,),
            ),
            SizedBox(height: height * 0.03),

            Apptext(text: 'OTP CODE:', allignment: Alignment.center, fontsize: 20, fontweight: FontWeight.w500,),
            SizedBox(height: height * 0.03),
            
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
               child: CustomInput(
                 hintext: 'input your otp',
                 controller: _otp,
                 validator: (value) => value.isEmpty ? 'verify your otp' : null

               ),
             ),
            SizedBox(height: height * 0.05),


             Padding(
               padding: const EdgeInsets.symmetric(horizontal:30),
               child: ButtonFilled(
                 text: 'Submit',
                 action: (){
                   if(_formKey.currentState.validate()){
  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectToic()));

                   }

                 },

               ),
             ),

            SizedBox(height: height * 0.05),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Row(
                  children: [
                    Apptext(text: 'Didnt receive any message ?', allignment: Alignment.center, fontsize: 20, fontweight: FontWeight.w500,),
                    Expanded(
                        child: InkWell(
                        onTap: (){},
                        child: Apptext(text: 'Resend Code', allignment: Alignment.center, fontsize: 20, fontweight: FontWeight.w500,)),
                    ),
                 
                  ],
                ),
            ),


          
          ],
        ),
      ),
      
    );
  }
}