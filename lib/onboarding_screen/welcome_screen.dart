import 'package:flutter/material.dart';
import '../widget/atom/button_filled.dart';
import '../widget/atom/h1.dart';




class Wellcome_Screen extends StatefulWidget {
  @override
  _Wellcome_ScreenState createState() => _Wellcome_ScreenState();
}

class _Wellcome_ScreenState extends State<Wellcome_Screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 140),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/cap.png',
                    height: 220,
                    width: double.infinity,
                  ),
                  SizedBox(height: size.height * 0.03),
                  Apptext(
                    text: 'Welcome to Scoodent',
                    allignment: Alignment.center,
                    fontweight: FontWeight.bold,
                    fontsize: 18.0,
                    color: Color(0xFF4D4D4D),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Apptext(
                      text:
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit',
                      allignment: Alignment.center,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              ),
            ),
            ButtonFilled(
                text: 'Sign up',
                action: () {
                  print('sign in');
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Sign_in_screen()));
                }),
            SizedBox(height: size.height * 0.02),
            ButtonFilled(
              text: 'Log in',
              textColor: Color(0xFF2D6CDF),
              action: () {
                print('login in');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Loginpage()));
              },
            
              color: Color(0xFFF2F6FD),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
