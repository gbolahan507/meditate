import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Open_up_page extends StatefulWidget {
  @override
  _Open_up_pageState createState() => _Open_up_pageState();
}

class _Open_up_pageState extends State<Open_up_page> {

  int checked = 0 ;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: height * 0.03),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: Column(
              children: [
                SpecialButtonFilled(
                  text: 'Open Up',
                ),
                   SizedBox(height: height * 0.03),
                    Container( height: 40, child: CustomInput( 
                    prefixIcon: Icon(Icons.search, color: teal200,)
                  )),
                   SizedBox(height: height * 0.03),
                   Row(
                     children: [
                       Open_up_button(
                         text: 'Queries',
                         onTap: (){
                           setState(() {
                             checked = 0;
                           });
                         },
                       ),
                       Open_up_button(
                         color: checked ==  1 ? teal200 : whitecolor,
                         textcolor: checked ==  1 ? whitecolor : teal200,
                         onTap: (){
                           setState(() {
                             checked = 1;
                           });
                         },
                         text: 'Conversation',
                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

               checked ==  0 ?     ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container();
                     })

                     : Container(),


                  

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
  final Color color;
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
            border: Border.all(color: teal200, width: 1.0),
            color: color ?? teal200
          ),
          child: Apptext(text: '${text}', color: textcolor ?? whitecolor, allignment: Alignment.center,),
      ),
        ),
    );
  }
}




