import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Listen_now_screen extends StatefulWidget {
  @override
  _Listen_now_screenState createState() => _Listen_now_screenState();
}

class _Listen_now_screenState extends State<Listen_now_screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    int checked = 0;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: height * 0.03),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Column(
              children: [
                SpecialButtonFilled(
                  text: 'Listen Now',
                  color: pink200,
                ),
                   SizedBox(height: height * 0.03),
                    Container( height: 40, child: Listen_now_search( 
                    prefixIcon: Icon(Icons.search, color: pink200,)
                  )),
                   SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         onTap: (){
                           setState(() {
                             checked = 0;
                           });
                         },
                         color: checked == 0 ? pink200 : whitecolor,
                         textcolor: checked == 0 ? whitecolor : pink200, 
                        
                         text: 'New Queries',
                        //  color: pink200,
                        
                       ),
                       Open_up_button(
                            onTap: (){
                           setState(() {
                             checked = 1;
                           });
                         },
                         color: checked == 1 ? pink200 : whitecolor,
                         textcolor: checked == 1 ? whitecolor : pink200, 
                        
                         text: 'Ongoing',
                        //  color: pink200,

                       ),
                         Open_up_button(
                              onTap: (){
                           setState(() {
                             checked = 2;
                           });
                         },
                         color: checked == 2 ? pink200 : whitecolor,
                         textcolor: checked == 2 ? whitecolor : pink200, 
                        
                         text: 'Resolved',
                        //  color: pink200,

                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

                  checked == 0 ?  ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container();
                     }) : (checked == 1 ? Container() :  (Container () ) )


                  

              ],
            ),
          )
        ],
      ),
    );
  }
}





class Open_up_button extends StatelessWidget {
  const Open_up_button({
    Key key, this.text, this.onTap, this.color, this.textcolor,
  }) : super(key: key);

  final text;
  final onTap;
  final color;
  final textcolor;


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: onTap,
           child: Container(
            height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: pink200, width: 1.0),
            color: color,
          ),
          child: Apptext(text: '${text}', color: textcolor, allignment: Alignment.center,),
      ),
        ),
    );
  }
}




