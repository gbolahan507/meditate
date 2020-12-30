import 'package:flutter/material.dart'


;
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';


class Open_up_button extends StatelessWidget {
  const Open_up_button({
    Key key, this.text, this.onTap, this.color, this.textcolor, this.height, this.bordercolor, 
  }) : super(key: key);

  final text;
  final onTap;
  final Color color;
  final textcolor;
  final double height;
  final Color bordercolor;


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: onTap,
           child: Container(
            height: height ?? 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color:bordercolor ?? teal200, width: 1.0),
            color: color
          ),
          child: Apptext(text: '${text}', color: textcolor , allignment: Alignment.center,),
      ),
        ),
    );
  }
}








// class Open_up_button extends StatelessWidget {
//   const Open_up_button({
//     Key key, this.text, this.onTap, this.color, this.textcolor,
//   }) : super(key: key);

//   final text;
//   final onTap;
//   final color;
//   final textcolor;


//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: InkWell(
//           onTap: onTap,
//            child: Container(
//             height: 40,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(color: color pink200, width: 1.0),
//             color: color,
//           ),
//           child: Apptext(text: '${text}', color: textcolor, allignment: Alignment.center,),
//       ),
//         ),
//     );
//   }
// }

