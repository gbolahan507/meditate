import 'package:flutter/material.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';



class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children:[
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  HomepageButtonFilled(),
                  SizedBox(height: height * 0.03),
                  Container(
                    height: 35,
                    child: CustomInput(
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),

                ],
              ),
            )
            
          ]
      )
      )
      
    );
  }
}