import 'package:flutter/material.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';



class Professionals_screen extends StatelessWidget {
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
                    text: 'Professionals'
                  ),
               SizedBox(height: height * 0.05),
    );
  }
}