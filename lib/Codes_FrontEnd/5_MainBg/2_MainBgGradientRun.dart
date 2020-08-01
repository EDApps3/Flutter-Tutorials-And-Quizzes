import 'package:flutter/material.dart';

void main() {
  runApp(MainBgGradientRun());
}

class MainBgGradientRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "MainBgCustomColor",
      home: new Scaffold(
        body:
          Container(
           width: double.infinity,
           height: double.infinity,
           decoration:BoxDecoration(
             gradient:
              new LinearGradient(
               colors:[
                Colors.deepPurple[700],
                Colors.purple[500]
               ],
               begin:const FractionalOffset(0.5,0.0),
               end:const FractionalOffset(0.0, 0.5),
               stops:[0.0,1.0],
               tileMode:
               TileMode.clamp
             ),
           ),
          ),
        ),
    );
  }

}








