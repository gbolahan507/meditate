import 'package:flutter/material.dart';
import 'package:meditaion_app/export/other_export.dart';
import '../util/colors.dart';
import '../widget/atom/h1.dart';
import 'sliderpage.dart';





class OnboardinScreen extends StatefulWidget {
  @override
  _OnboardinScreenState createState() => _OnboardinScreenState();
}

class _OnboardinScreenState extends State<OnboardinScreen> {

  int _currentpage = 0;

  PageController _controller = PageController();

 

    List<Widget>  _pages = [
      

      SliderPage(
        image : 'images/social.png',
        title : 'Listen Now',
        subtitle: 'Be the ears & pay hees to the complexities of the human mind'
      ),

         SliderPage(
        image : 'images/event.png',
        title : 'Connect',
        subtitle: 'Communicate with similar mind and share your thought'

      ),

         SliderPage(
        image : 'images/groups.png',
        title : 'Open up',
        subtitle: 'Insted of dealing with your troubles alone, put them out in the open  & get expert opinions',

      ),

      


    ];

    _onchanged(int index){

      setState(() {
        _currentpage = index;
      });

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _controller,
            itemCount: _pages.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            itemBuilder: (context, int index){
              return _pages[index];

            }
            
            ),
            Positioned(
              bottom: 50,
              left: 50,
                 child: Container(
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                        List<Widget>.generate(_pages.length, (int index){
                          return AnimatedContainer(
                            duration: Duration( milliseconds: 300),
                            height: 8,
                            width: (index == _currentpage) ? 25 : 25,
                            margin: EdgeInsets.symmetric(horizontal: 5, vertical : 20),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              color: (index == _currentpage) ? pink200 : teal200
                            ),
                          );
                        }
                        )
                      
                    )
                  ],

                ),
              ),
            ),

            Positioned(
              bottom: 50,
              right: 35,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:10, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: pink200,
                          ),
                          
                child:  (_currentpage == (_pages.length-1)) ?  InkWell(
                       onTap: (){
                          setState(() {
                           (_currentpage == (_pages.length-1)) ?  Navigator.push(context, MaterialPageRoute(builder: (context) => Choose_auth_page())) : null;

                          });
                          },
                     child: Apptext(
                    text:  'Get Started',
                    allignment: Alignment.center,
                    fontweight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ) : InkWell(
                  onTap: (){
                    _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
                  },
                     child: Apptext(
                    text:  'Next',
                    allignment: Alignment.center,
                    fontweight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                      ),
                        ),
        ],
      ),
    );
  }
}

