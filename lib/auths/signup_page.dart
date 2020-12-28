import 'package:flutter/material.dart';

import '../screens/navscreen.dart';
import '../util/colors.dart';
import '../widget/atom/button_filled.dart';
import '../widget/atom/custom_input.dart';
import '../widget/atom/h1.dart';



class SignUp_page extends StatelessWidget {
    var _name = TextEditingController();
    var _email = TextEditingController();
    var _password = TextEditingController();
    var _username = TextEditingController();
    var _phoneNumber = TextEditingController();


  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _formKey,
              child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: <Widget>[
                SizedBox(height: height * 0.05),

                SpecialButtonFilled(
                  text: 'Sign Up',
                  textColor: whitecolor,
                ),
                SizedBox(height: height * 0.05),

                      CustomInput(
                        hintext: 'Name',
                        controller: _name,
                        validator: (val) => val.isEmpty? 'Enter user full name' : null
                      ),
                SizedBox(height: height * 0.02),


                      CustomInput(
                        hintext: 'Username',
                        controller: _username,
                        validator: (val) => val.isEmpty? 'confirm password' : null

                      ),
                SizedBox(height: height * 0.02),




                      CustomInput(
                        hintext: 'Email',
                        controller: _email,
                        validator: (val) => val.isEmpty? 'Enter email address' : null

                      ),
                SizedBox(height: height * 0.02),

                                  CustomInput(
                        hintext: 'Phone No',
                        controller: _phoneNumber,
                        validator: (val) => val.isEmpty? 'confirm password' : null

                      ),

                SizedBox(height: height * 0.02),

                      CustomInput(
                        hintext: 'Password',
                        controller: _password,
                        validator: (val) => val.isEmpty? 'Enter secret password' : null

                      ),
             
                SizedBox(height: height * 0.06),

                        ButtonFilled(
                        text: 'Sign up',
                        action: (){
                          if(_formKey.currentState.validate()){
                      
  Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));

                          }

                        },
                        color: teal200,
                        textColor: whitecolor,
                    
                          ),
                SizedBox(height: height * 0.05),
                   ButtonFilled(
                        text: 'Anonymous Sign Up',
                        action: (){
                          if(_formKey.currentState.validate()){
                      
  Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));

                          }

                        },
                        color: pink300,
                        textColor: whitecolor,
                    
                          ),
                SizedBox(height: height * 0.05),



  //                     SizedBox(height: 20),


                    
                        
                            //  SizedBox(height: 50,),

                               Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Apptext(
                            text: 'Sign in with',
                            color: thickblack,
                            fontsize: 24,

                             ),
                           SizedBox(width: 10,),
                           Image.asset('images/goggle.png', color: pink300, width: 25,),
                           SizedBox(width: 10,),

                           Apptext(
                            text: 'or',
                            color: thickblack,
                            fontsize: 24,
                             ),
                           SizedBox(width: 10,),
                           Image.asset('images/facebook.png', color: brondblue, width: 15,),

                         ],
                       ),
                             SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      
    );
  }
}






