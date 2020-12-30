import 'package:flutter/material.dart';




                    class Active_picture extends StatelessWidget {
                      const Active_picture({
                        Key key,
                      }) : super(key: key);

                      @override
                      Widget build(BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Stack(
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
                        );
  }
}