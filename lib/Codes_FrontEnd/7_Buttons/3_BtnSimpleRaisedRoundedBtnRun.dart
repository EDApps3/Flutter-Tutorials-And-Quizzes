import 'package:flutter/material.dart';


void main() => runApp(BtnSimpleRaisedRoundedBtnRun());

class BtnSimpleRaisedRoundedBtnRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Simple Rounded Raised Button'),
        ),
        body:
         Center(
           child:
            RaisedButton(
             shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0),
             ),
             child:
             Text('Click Me'),
             onPressed: () {
               //Nothing To Do
             },
           ),
         )
      ),
    );
  }
}


