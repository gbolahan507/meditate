import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';




class Queries_container extends StatelessWidget {
  const Queries_container({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/gbolahan2.png'),

                  ),
                  Positioned(
                    bottom: 5,
                    right: 1,
                    child: Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreen,), height: 10, width: 10, ))
                ],
              ),
              SizedBox(width: 15),

              Expanded(
                  child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:5),
                          child: Apptext(text: 'Rohit Sharma', color: thickblack, fontsize: 20, fontweight: FontWeight.w500,),
                        ),
                        Spacer(),
                       Apptext(text: 'Yesterday', fontsize: 16, fontweight: FontWeight.normal,),


                      ],
                    ),
                    Apptext(text: 'Lorem Ipsum is simply the artisic way. Lorem is simply the artisic way', color: thickblack, fontsize: 16, fontweight: FontWeight.normal,),
                    
                  ],
                ),
              )

            ],
          ),
          SizedBox(height:10),
          Divider(color: Colors.grey),
          SizedBox(height:10),

        ],
      ),
    );
  }
}


