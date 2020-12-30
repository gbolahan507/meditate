import 'package:flutter/material.dart';
import 'package:meditaion_app/export/atom_export.dart';
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
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Column(
                children: [
                  SpecialButtonFilled(
                    text: 'Edit Profile'
                  ),
              
            SizedBox(height: height * 0.03),

               InkWell(
                 onTap: (){

                 },
               child: CircleAvatar(
                radius: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt_rounded, size: 35, color: thickblack,),
                    Apptext(text: 'Add pic', fontsize: 20, color: thickblack, allignment: Alignment.center,)
                  ],
                ),
                backgroundColor: pink200,
              ),
            ),
            // Container()
            SizedBox(height: height * 0.05),
            CustomInput(
              hintext: 'Name',
              controller: _name,

            ),
            SizedBox(height: height * 0.02),

               CustomInput(
              hintext: 'Profession',
              controller: _profession,
              
            ),
            SizedBox(height: height * 0.02),

               CustomInput(
              hintext: 'Place',
              controller: _place,
              
            ),
            SizedBox(height: height * 0.02),

               CustomInput(
              hintext: 'Age',
              controller: _age,
              
            ),
            SizedBox(height: height * 0.07),


            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ChoosedButton(
                  text: 'Cancelled',
                  color: whitecolor,
                  textcolor: teal200,
                ),
                SizedBox(width: 15),

                 ChoosedButton(
                  text: 'Submit',
                  color: teal200,
                  textcolor: whitecolor,
                ),
              ],
            )


          ],
        ),
      ),
        ],
              ),
            ),
    );
  }
}



class ChoosedButton extends StatelessWidget {
  const ChoosedButton({
    Key key, this.text, this.color, this.onTap, this.textcolor,
  }) : super(key: key);
  final text;
  final color;
  final onTap;
  final textcolor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
          height: 40,
          width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          border: Border.all(color: teal200, width: 1.5),
        ),
        child: Apptext(text: '${text}', allignment: Alignment.center, color: textcolor ?? teal200, fontsize: 20, fontweight: FontWeight.w600,),
      ),
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