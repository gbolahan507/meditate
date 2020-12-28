import 'package:flutter/material.dart';
import 'package:meditaion_app/auths/signup_page.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';




class Sign_in extends StatelessWidget {

  
  var _username = TextEditingController();
  var _password = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        child: ListView(
          children: [
            SizedBox(height:  height * 0.1 ),
            Apptext(text: 'Speak Easy', fontsize: 30, fontweight: FontWeight.w600, allignment: Alignment.center, ),
            SizedBox(height:  height * 0.05 ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  ButtonFilled(
                    text: 'Log in with Facebook',
                    action: (){},
                    color: brondblue,
                    textColor: whitecolor,
                  ),
              
            SizedBox(height:  height * 0.03 ),
              ButtonFilled(
              text: 'Log in with Google',
              action: (){},
              color: Colors.red,
              textColor: whitecolor,
            ),

            SizedBox(height:  height * 0.03 ),
          
            Apptext(text: 'Or', fontsize: 25, color: thickblack, fontweight: FontWeight.w600, allignment: Alignment.center, ),

            SizedBox(height:  height * 0.03 ),

            CustomInput(
              hintext: 'Username',
              controller: _username,
              validator: (val) => val.isEmpty ? 'Enter username' : null,
              prefixIcon: Icon(Icons.person_add_alt_1_rounded)

            ),
            SizedBox(height:  height * 0.03 ),


            CustomInput(
              hintext: 'Password',
              controller: _password,
              validator: (val) => val.isEmpty ? 'Enter username' : null,
              prefixIcon: Icon(Icons.lock)

            ),

            SizedBox(height:  height * 0.03 ),

             ButtonFilled(
              text: 'Login',
              action: (){},
              textColor: whitecolor,
            ),

            SizedBox(height:  height * 0.03 ),


             ButtonFilled(
              text: 'Anonymous Login',
              action: (){},
              color: pink300,
              textColor: whitecolor,
            ),

            SizedBox(height:  height * 0.02 ),

            Row(
              children: [
                InkWell(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_page()));
                  },
                  child: Apptext(text: 'Create an account', fontsize: 16,  fontweight: FontWeight.w600,  )),
              Spacer(),
                  InkWell(
                  onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_page()));
                  },
                  child: Apptext(text: 'Forgot password', fontsize: 16,  fontweight: FontWeight.w600,  )),
             
              ],
            ),

            SizedBox(height:  height * 0.02 ),


            





            

              ],
              ),
            ),

          ],
        ),
      ),
      
    );
  }
}