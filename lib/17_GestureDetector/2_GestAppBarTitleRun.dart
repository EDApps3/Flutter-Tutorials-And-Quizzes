import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(GestAppBarTtileRun());
}

class GestAppBarTtileRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "AppBar Title Gesture Detector",
      home: new Scaffold(
        appBar:
        AppBar(
          title:
          GestureDetector(
            onTap: (){
              AlertDialog AD=new AlertDialog(
                content:Text("AppBar Title Tapped!"),
              );
              showDialog(context:context,child:AD);
            },
            child:Text("Tap Me!"),
          )
        ),
        body:
            Center(
              child:
                Text("Tap The App Bar Title"),
            ),
          ),
    );
  }

}








