import 'package:flutter/material.dart';


import '../screens/navscreen.dart';
import '../util/colors.dart';
import '../widget/atom/button_filled.dart';
import '../widget/atom/custom_input.dart';
import '../widget/atom/h1.dart';
import 'signup_page.dart';



class Login_page extends StatelessWidget {
    var _email = TextEditingController();
    var _password = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
              child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 40),
                child: Apptext(
                  allignment: Alignment.center,
                  text: 'Mindscape',
                  color: thickblack,
                  fontsize: 40,
                  fontweight: FontWeight.bold,
                ),
              ),


                  CustomInput(
                    hintext: 'Email',
                    controller: _email,
                      validator: (val) => val.isEmpty? 'Enter email addrwss' : null

                  ),

                  SizedBox(height: 40),

                  CustomInput(
                    hintext: 'Password',
                    controller: _password,
                      validator: (val) => val.isEmpty? 'Enter your secret password' : null

                  ),

                  SizedBox(height: 60),

                    ButtonFilled(
                    text: 'Login',
                    action: (){
                      if(_formKey.currentState.validate()){
  Navigator.push(context, MaterialPageRoute(builder: (context) => NavScreen()));

                      }

                    },
                    color: Colors.deepPurpleAccent,
                    textColor: whitecolor,
                    
                      ),
                  SizedBox(height: 20),


                        InkWell(
                   onTap: (){
                     print('forgot password');
                   }, 
                   child: Apptext(
                  allignment: Alignment.centerRight,
                  text: 'Forgot password?',
                  color: Colors.grey,
                  fontsize: 20,
                ),
                        ),
                        
                         SizedBox(height: 150,),

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


                        Row(
                        
                     children: <Widget>[
                       Apptext(
                  text: 'Dont have an account?',
                  color: Colors.grey,
                  fontsize: 18,
                ),
                       SizedBox(width: 10,),
                       InkWell(
                             onTap: (){
                     print('sign up');
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp_page()));

                   }, 
                   child: Apptext(
                  text: 'Sign up',
                  color: Colors.red,
                  fontsize: 18,
                ),
                         ),
                       

                     ],
                   ),

              
                        
            ],
          ),
        ),
      ),
      
    );
  }
}



// class Producer_text extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal:24),
//       child: new RichText(
//         text: new TextSpan(
//           text: 'Produced by Feyitalz  ',
//                 style: TextStyle(color: Co, fontSize: 12, fontWeight: FontWeight.w500),

//           children: <TextSpan>[
//             new TextSpan( 
//                  text: 'on Nov 6, 2020',
//               style: TextStyle(color: greyd, fontSize: 12, fontWeight: FontWeight.w300),
//             ),
          
//           ],
//         ),
//       ),
//     );
//   }
// }


