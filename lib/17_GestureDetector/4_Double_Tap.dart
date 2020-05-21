import 'package:flutter/material.dart';

void main() {
  runApp(BodyDoubleTap());
}

class BodyDoubleTap extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Body Double Tap",
      home: new Scaffold(
        appBar:
        AppBar(
            title:Text("Body Double Tap")
        ),
        body:GestureDetector(
          onDoubleTap:(){
            AlertDialog dialog = new AlertDialog(
                content: new Text("Double Tap Detected!")
            );
            showDialog(context: context, child: dialog);
          },
          child:Container(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height ,
            color:Colors.white,
            child:Center(
              child:Text("Double Tap The Body And See What Gonna Happen!"),
            ),
          ),
        )
      ),
    );
  }

}








