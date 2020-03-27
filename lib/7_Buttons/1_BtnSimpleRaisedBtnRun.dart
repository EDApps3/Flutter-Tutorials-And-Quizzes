import 'package:flutter/material.dart';


void main() => runApp(BtnSimpleRaisedBtnRun());

class BtnSimpleRaisedBtnRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Simple Raised Button'),
        ),
        body:
         Center(
           child:
            RaisedButton(
             child:
              Text('Click Me'),
              onPressed: () {
               //Nothing To Do
              },
            ),
         )
      )
    );
  }
}


