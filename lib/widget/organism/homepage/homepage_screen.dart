import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/molecule/homepage/active_pics.dart';
import 'package:meditaion_app/widget/molecule/homepage/group_container.dart';
import 'package:meditaion_app/widget/organism/open_ups/open/open_up_chat.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';



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
                  SizedBox(height: height * 0.02),

                  Apptext(text: 'Active Friend' ),

                  SizedBox(height: height * 0.02),


                  Container(
                    height: 60,
                    margin: EdgeInsets.only(right: 10),
                    child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (context, index){
                         return  Active_picture();
                         
                       }),
                  ),

                  SizedBox(height: height * 0.02),


                  Apptext(text: 'Recent Messages' ),

                  SizedBox(height: height * 0.02),


                    ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 2,
                     itemBuilder: (context, index){
                       return Queries_container(
                         onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Open_up_chat_page()));

                         },
                       );
                     }),

                  Apptext(text: 'Recent groups' ),

                  SizedBox(height: height * 0.02),


                    Container(
                    height: 80,
                    margin: EdgeInsets.only(right: 10),
                    child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: 4,
                       itemBuilder: (context, index){
                         return  Group_container();
                         
                       }),
                  ),
                  SizedBox(height: height * 0.02),


                   Container(
              height: 100,
              width: double.infinity,
              color: pink200,
              child: Image.asset('images/play.png'),
            ),
            

                  SizedBox(height: height * 0.02),


                ],
              ),
            ),
           
            
          ]
      )
      )
      
    );
  }
}


