import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';
import 'package:meditaion_app/widget/organism/queries_container.dart';




class Listen_now_screen extends StatelessWidget {
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
                         text: 'New Queries',
                        //  color: pink200,
                        
                       ),
                       Open_up_button(
                         text: 'Ongoing',
                        //  color: pink200,

                       ),
                         Open_up_button(
                         text: 'Resolved',
                        //  color: pink200,

                       ),
                     ],
                   ),
                   SizedBox(height: height * 0.05),

                   ListView.builder(
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemCount: 5,
                     itemBuilder: (context, index){
                       return Queries_container();
                     })


                  

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
    Key key, this.text, this.onTap,
  }) : super(key: key);

  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: (){},
           child: Container(
            height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: teal200, width: 1.0),
            color: teal200
          ),
          child: Apptext(text: '${text}', color: whitecolor, allignment: Alignment.center,),
      ),
        ),
    );
  }
}




