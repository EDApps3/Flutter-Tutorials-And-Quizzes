import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(SPISlideRun());
}

class SPISlideRun extends StatefulWidget {
  @override
  _SPISlideState createState() => new _SPISlideState();
}

class _SPISlideState extends State<SPISlideRun> {
  var controller;

  void initState() {

    controller=new PageController(
      viewportFraction:0.8,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SPI Slide',
      home: new Scaffold(
        appBar:AppBar(
            title: new Text('SPI Slide')
        ),
        body:
          Column(
            children: <Widget>[

            SizedBox(
                height:300,
                child:PageView(
                  controller:controller,
                  children: <Widget>[

                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.yellow,
                        child:
                        Center(
                          child:
                          Text('Simple Text,Keep Swiping'),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.white70,
                        child:
                        Center(
                          child:
                          Icon(Icons.favorite),
                        ),
                      ),
                    ),

                    SizedBox(
                      width:double.infinity,
                      height:300,
                      child:
                      Card(
                        color:Colors.black26,
                        child:
                        Center(
                            child:
                            Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("Images/Dart_Logo.png"),
                                Text("Dart Logo!")
                              ],
                            )
                        ),
                      ),
                    ),

                  ],
                ),
              ),


            Container(
              child:
               SmoothPageIndicator(
                 controller:controller,
                 count:3,
                 effect:SlideEffect(
                   spacing:8.0,
                   radius:4.0,
                   dotWidth:24.0,
                   dotHeight: 16.0,
                   dotColor:Colors.grey,
                   activeDotColor:Colors.indigo,
                 ),
               ),
            )


            ],
          )

      ),
    );
  }
}







