import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(SPIScrollDotsRun());
}

class SPIScrollDotsRun extends StatefulWidget {
  @override
  _SPIScrollDotsState createState() => new _SPIScrollDotsState();
}

class _SPIScrollDotsState extends State<SPIScrollDotsRun> {
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
      title: 'SPI Scroll Dots',
      home: new Scaffold(
        appBar:AppBar(
            title: new Text('SPI Scroll Dots')
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
                 effect:ScrollingDotsEffect(
                   activeStrokeWidth:2.6,
                   activeDotScale:0.4,
                   radius:8,
                   spacing:10,
                 ),
               ),
            )


            ],
          )

      ),
    );
  }
}







