import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import 'package:meditaion_app/widget/atom/button_filled.dart';
import 'package:meditaion_app/widget/atom/custom_input.dart';



class EditProfile extends StatefulWidget {

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
    var _name = TextEditingController();

    var _profession = TextEditingController();

    var _place = TextEditingController();

    var _age = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SpecialButtonFilled(
              text: 'Edit Profile'
            ),
            SizedBox(height: height * 0.03),
            CircleAvatar(
              radius: 50,
              // child: ,
              backgroundColor: pink200,
            ),
            SizedBox(height: height * 0.05),
            CustomInput(
              hintext: 'Name',
              controller: _name,

            ),
               CustomInput(
              hintext: 'Profession',
              controller: _profession,
              
            ),
               CustomInput(
              hintext: 'Place',
              controller: _place,
              
            ),
               CustomInput(
              hintext: 'Age',
              controller: _age,
              
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChooseButton(
                  text: 'Cancelled',
                  color: whitecolor,
                  textcolor: teal200,
                ),

                 ChooseButton(
                  text: 'Submit',
                  color: teal200,
                  textcolor: whitecolor,
                ),
              ],
            )


          ],
        ),
      )
    );
  }
}





//   Widget imageprofile(){
//     return Center(
//       child: Stack(
//         overflow: Overflow.visible,
//         children: <Widget>[
//           InkWell(
//             onTap: (){
//                 showModalBottomSheet(context: context, builder: ((builder) => bottomsheet()));
//               },
//                child: CircleAvatar(
//               radius: 50,
//               backgroundImage: _image == null ? AssetImage('images/pp.jpeg') :FileImage(File(_image.path)) 
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             right: -5,
//             child: InkWell(
//               onTap: (){
//                 showModalBottomSheet(context: context, builder: ((builder) => bottomsheet()));
//               },
//               child: Icon(Icons.camera_alt, size: 20,)),
            
//           )
//         ],
//       ),
//     );
//   }






//   Widget bottomsheet() {
//     return Container(
//       margin: EdgeInsets.only(top: 20,),
//       height: 150,
//       width: double.infinity,
//       child:    Column(
//         children: <Widget>[

//       Container(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//         children: <Widget>[
//         H2text(text:'Edit Photo'),
//         Spacer(),
//         InkWell(
//           onTap: (){
//                 Navigator.pop(context);
//               },
//                               child: Icon(Icons.close, color: thickblack,))
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                        Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: <Widget>[
//                         Column(
//                           children: <Widget>[
//                             CircleAvatar(
//                               backgroundColor: pink300,
//                               radius: 25,
//                                  child: IconButton(
//                                 icon: Icon(Icons.camera_alt),
//                                   onPressed: () {
//                               takephoto(ImageSource.camera);
//                               Navigator.pop(context);
//                             },
//                                 color: Colors.white),
//                             ),
//                             H2text(text:'camera')
//                           ],
//                         ),

//                         Column(
//                           children: <Widget>[
//                             CircleAvatar(
//                               backgroundColor: Colors.blue,
//                               radius: 25,
//                                  child: IconButton(
//                                 icon: Icon(Icons.image),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                   takephoto(ImageSource.gallery);
//                                 },
//                                 color: Colors.white),
//                             ),
//                             H2text(text:'gallery')

//                           ],
//                         ),
//                       ],
//                     ),


                    
//         ],
//       ),
//     );
//   }



//   void takephoto(ImageSource source) async{
//     final pickedFile = await _picker.getImage(source: source);
//     setState(() {
//         _image = pickedFile;
      
//     });
//   }
// }

// class Activity_container extends StatelessWidget {
//   const Activity_container({
//     Key key, this.color, this.text, this.onTap,
//   }) : super(key: key);


//   final color;
//   final text;
//   final onTap;


//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
          
//           child:     Container(
//                  padding: EdgeInsets.symmetric(vertical: 5, horizontal:10),
//                  decoration: BoxDecoration(
//                    color: whitecolor,
//                    border: Border.all(color: color),
//                    borderRadius: BorderRadius.circular(8)
//                  ),
//                  child: Column(
//                    children: <Widget>[
//                      H2text(text: text,),
                
//               ],
//             )
//           )
//     );
//   }

// }