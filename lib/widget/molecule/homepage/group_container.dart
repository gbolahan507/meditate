import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
import 'package:meditaion_app/export/other_export.dart';




class Group_container extends StatelessWidget {
  const Group_container({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     //  height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: teal200),
      ),
      child: Apptext(text:'Sports', allignment: Alignment.center,),
    );
  }
}

